$regionsPath = Join-Path $PSScriptRoot "regions.txt"
$vmSkusPath = Join-Path $PSScriptRoot "vm-skus.txt"
$vmSkuInfoPath = Join-Path $PSScriptRoot "vm-skus.csv"
$spotPricesDir = Join-Path $PSScriptRoot "spot-prices"

Write-Host "Getting regions in US and Canada"
$regions = az account list-locations `
    --query "[?(metadata.geographyGroup == 'US' || metadata.geographyGroup == 'Canada') && not_null(metadata.latitude)].name" `
    --output tsv | `
    Where-Object { !$_.EndsWith("euap") } | `
    Sort-Object
$regions | Out-File $regionsPath -Encoding utf8

$skuNameToInfo = @{}
$skuNameToRegions = @{}
foreach ($region in $regions) {
    Write-Host "Getting VM SKUs in $region"
    $regionSkusJson = az vm list-skus `
        --location $region `
        --resource-type "virtualMachines" `
        --size "Standard_"
    $regionSkus = $regionSkusJson.Replace("""Name""", """_Name""") | ConvertFrom-Json
    foreach ($sku in $regionSkus) {
        $capabilities = @{}
        foreach ($pair in $sku.capabilities) {
            $capabilities[$pair.name] = $pair.value
        }
        
        $skuInfo = [PSCustomObject]@{
            Name                      = $sku.name;
            vCPUs                     = [int]$capabilities.vCPUs;
            MemoryGB                  = [int]$capabilities.MemoryGB;
            CachedDiskBytes           = [long]$capabilities.CachedDiskBytes;
            MaxResourceVolumeMB       = [long]$capabilities.MaxResourceVolumeMB;
            CpuArchitectureType       = $capabilities.CpuArchitectureType;
            LowPriorityCapable        = [Convert]::ToBoolean($capabilities.LowPriorityCapable);
            EphemeralOSDiskSupported  = [Convert]::ToBoolean($capabilities.EphemeralOSDiskSupported);
            EncryptionAtHostSupported = [Convert]::ToBoolean($capabilities.EncryptionAtHostSupported);
        }

        $candidate = $capabilities.VMDeploymentTypes.Contains("IaaS") `
            -and $skuInfo.LowPriorityCapable `
            -and $skuInfo.MemoryGB -gt 0 `
            -and $skuInfo.vCPUs -gt 0;

        if ($candidate) {
            if (!$skuNameToInfo[$skuInfo.Name]) {
                $skuNameToInfo[$skuInfo.Name] = $skuInfo
                $skuNameToRegions[$skuInfo.Name] = @($region)
            }
            else {
                if (Compare-Object $skuNameToInfo[$skuInfo.Name].PSObject.Properties $skuInfo.PSObject.Properties) {
                    throw "Found inconsistent SKU info for $($skuInfo.Name). Region $region is different than $($skuNameToRegions[$skuInfo.Name] -join ', ')."
                }
                $skuNameToRegions[$skuInfo.Name] = ($skuNameToRegions[$skuInfo.Name] + @($region)) | Sort-Object
            }
        }
    }
}

$vmSkus = $skuNameToInfo.Values | `
    Sort-Object -Property Name | `
    ForEach-Object { $_ | Add-Member -MemberType NoteProperty -Name 'Regions' -Value ($skuNameToRegions[$_.Name] -join ","); $_ }
$vmSkus | Export-Csv -Path $vmSkuInfoPath -Encoding utf8 -NoTypeInformation

$vmSkuNames = $vmSkus | ForEach-Object { $_.Name }
$vmSkuNames | Out-File -FilePath $vmSkusPath -Encoding utf8

# Azure Retail Prices API
# Docs: https://docs.microsoft.com/en-us/rest/api/cost-management/retail-prices/azure-retail-prices

if (!(Test-Path $spotPricesDir)) {
    New-Item $spotPricesDir -ItemType Directory | Out-Null
}

foreach ($vmSku in $vmSkuNames) {
    $baseUrl = "https://prices.azure.com/api/retail/prices"
    $apiVersion = "2021-10-01-preview"
    $currencyCode = "USD"
    $meterRegion = "primary"

    $regionsCriteria = @($regions | ForEach-Object { "armRegionName eq '$_'" }) -join " or "

    $criteria = @(
        "serviceFamily eq 'Compute'",
        "serviceName eq 'Virtual Machines'",
        "contains(tolower(skuName), 'spot')",
        "priceType eq 'Consumption'",
        "contains(tolower(productName), 'windows') eq false",
        "($regionsCriteria)",
        "armSkuName eq '$vmSku'"
    )
    
    $url = "$($baseUrl)?api-version=$apiVersion&currencyCode=$currencyCode&meterRegion=$meterRegion&`$filter=$($criteria -join " and ")"

    Write-Host "Getting prices for $vmSku"
    $response = Invoke-WebRequest $url -UserAgent "GitHub Actions - joelverhagen/data-azure-spot-vms" -UseBasicParsing
    $response.Content | `
        jq '.Items[] | { armRegionName: .armRegionName, retailPrice: .retailPrice, meterId: .meterId }' | `
        jq --slurp '. | sort_by(.armRegionName, .meterId)[]' | `
        jq --slurp '.' | `
        Out-File (Join-Path $spotPricesDir "$vmSku.json") -Encoding utf8
}
