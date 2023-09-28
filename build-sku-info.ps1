function Get-DiskInfo ($sku) {
    [pscustomobject]@{  
        Name           = $_.Name
        CacheDiskGB    = [System.Math]::Floor($_.CachedDiskBytes / (1.0 * 1024 * 1024 * 1024))
        ResourceDiskGB = [System.Math]::Floor($_.MaxResourceVolumeMB / (1.0 * 1024))
        Sku            = $_
    }
}

function Get-DiskPlacement ($info) {
    if ($info.CacheDiskGB -ge $info.ResourceDiskGB) {
        $diskSizeGB = $info.CacheDiskGB
        $diffDiskPlacement = 'CacheDisk'
    }
    else {
        $diskSizeGB = $info.ResourceDiskGB
        $diffDiskPlacement = 'ResourceDisk'
    }
    [pscustomobject]@{  
        Name              = $_.Name;
        DiskSizeGB        = $diskSizeGB
        DiffDiskPlacement = $diffDiskPlacement
        Info              = $_
    }
}

function Get-BicepObjectProperty ($placement) {
    $quote = if ($placement.Name -match "[^\w]") { "'" } else { "" }
    "  $($quote)$($placement.Name)$($quote): {`n" + 
    "    diskSizeGB: $($placement.DiskSizeGB)`n" + 
    "    diffDiskPlacement: '$($placement.DiffDiskPlacement)'`n" +
    "  }`n"
}

$vmSkus = Get-Content (Join-Path $PSScriptRoot "vm-skus.csv") | ConvertFrom-Csv

# Get disk placement per SKU, requiring at least 30 GB (needed for 2022-datacenter-core-smalldisk image)
$diskPlacement = $vmSkus | `
    ForEach-Object { Get-DiskInfo $_ } | `
    ForEach-Object { Get-DiskPlacement $_ } | `
    Where-Object { $_.DiskSizeGB -ge 30 } | `
    Sort-Object -Property Name

$properties = @($diskPlacement | ForEach-Object { Get-BicepObjectProperty $_ }) -join ""

$fileContent = "// Calculated using this resource: https://github.com/joelverhagen/data-azure-spot-vms/blob/main/vm-skus.csv`n" +
"// If a SKU has both a CacheDisk and a ResourceDisk with a capacity of a least 30 GB, the larger is selected.`n" +
"var skuInfo = {`n" +
$properties +
"}"

$fileContent.Replace("`n", [System.Environment]::NewLine) | Out-File (Join-Path $PSScriptRoot "SkuInfo.bicep") -Encoding ascii
