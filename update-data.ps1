$allowNoOp = $false
$regionsPath = Join-Path $PSScriptRoot "regions.txt"
$vmSkusPath = Join-Path $PSScriptRoot "vm-skus.txt"
$spotPricesDir = Join-Path $PSScriptRoot "spot-prices"

if ($allowNoOp -and (Test-Path $regionsPath)) {
    $regions = Get-Content $regionsPath
}
else {
    Write-Host "Getting regions in US and Canada"
    $regions = az account list-locations `
        --query "[?(metadata.geographyGroup == 'US' || metadata.geographyGroup == 'Canada') && not_null(metadata.latitude)].name" `
        --output tsv | `
        Where-Object { !$_.EndsWith("euap") } | `
        Sort-Object
    $regions | Out-File $regionsPath -Encoding utf8
}

if ($allowNoOp -and (Test-Path $vmSkusPath)) {
    $vmSkus = Get-Content $vmSkusPath
}
else {
    $vmSkus = @()
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

            $vCPUs = [int]$capabilities.vCPUs
            $memoryGB = [int]$capabilities.MemoryGB
            $cachedDiskBytes = [long]$capabilities.CachedDiskBytes
            $minCachedDiskBytes = 30 * 1024 * 1024 * 1024
            $cpuArchitectureType = $capabilities.CpuArchitectureType
            $vmDeploymentTypes = $capabilities.VMDeploymentTypes
            $lowPriorityCapable = [Convert]::ToBoolean($capabilities.LowPriorityCapable)
            $ephemeralOSDiskSupported = [Convert]::ToBoolean($capabilities.EphemeralOSDiskSupported)
            $encryptionAtHostSupported = [Convert]::ToBoolean($capabilities.EncryptionAtHostSupported)

            if ($vCPUs -ge 2 -and $vCPUs -le 16 -and `
                    $memoryGB -ge 4 -and $memoryGB -le 32 -and `
                    $cachedDiskBytes -ge $minCachedDiskBytes -and `
                    $cpuArchitectureType -eq "x64" -and `
                    $vmDeploymentTypes.Contains("IaaS") -and `
                    $lowPriorityCapable -and `
                    $ephemeralOSDiskSupported -and `
                    $encryptionAtHostSupported) {
                $vmSkus += @($sku.name)
            }
        }
    }
    $vmSkus = $vmSkus | Sort-Object | Select-Object -Unique
    $vmSkus | Out-File $vmSkusPath -Encoding utf8
}

# Azure Retail Prices API
# Docs: https://docs.microsoft.com/en-us/rest/api/cost-management/retail-prices/azure-retail-prices

if (!(Test-Path $spotPricesDir)) {
    New-Item $spotPricesDir -ItemType Directory | Out-Null
}

foreach ($vmSku in $vmSkus) {
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
    $response = Invoke-WebRequest $url -UserAgent "GitHub Actions - joelverhagen/data-azure-spot-vms"
    $response.Content | `
        jq '.Items[] | { armRegionName: .armRegionName, retailPrice: .retailPrice, meterId: .meterId }' | `
        jq --slurp '. | sort_by(.armRegionName, .meterId)[]' | `
        jq --slurp '.' | `
        Out-File (Join-Path $spotPricesDir "$vmSku.json") -Encoding utf8
}
