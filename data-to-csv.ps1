$spotPricesDir = Join-Path $PSScriptRoot "spot-prices"
$files = Get-ChildItem (Join-Path $spotPricesDir "*.json")
$expectedAuthor = "actions@users.noreply.github.com"

$rows = @()
$commitOffset = 0
$env:TZ = "UTC0"

while ($true) {
    $commitHash = git rev-parse --short "HEAD~$commitOffset" 2>&1
    if ($LASTEXITCODE -ne 0) { 
        Write-Host "No more commits to check."
        break
    }
    $commitDate = $(git log "HEAD~$commitOffset" -1 --format=%cd --date=iso-local).Replace(" +0000", "")
    $commitAuthor = $(git log "HEAD~$commitOffset" -1 --format='%ae')

    if ($commitAuthor -ne $expectedAuthor) {
        Write-Host "Skipping HEAD~$commitOffset ($commitHash) because author is not '$expectedAuthor'"
    }
    else {
        Write-Host "Reading HEAD~$commitOffset ($commitHash), committed at $commitDate"

        foreach ($file in $files) {
            $gitPath = $file.FullName.Substring($PSScriptRoot.Length + 1).Replace("\", "/")
            $sku = $file.BaseName
            $jsonData = git show "HEAD~$($commitOffset):$gitPath" 2>&1
            if ($LASTEXITCODE -ne 0) { continue }
            $data = $jsonData | ConvertFrom-Json
            foreach ($item in $data) {
                $rows += @([PSCustomObject]@{
                        commitDate    = $commitDate;
                        armSkuName    = $sku;
                        armRegionName = $item.armRegionName;
                        meterId       = $item.meterId;
                        retailPrice   = $item.retailPrice
                    })
            }
        }
    }

    $commitOffset += 1
}

$rows | `
    Sort-Object -Property commitDate, armSkuName, armRegionName, meterId | `
    Export-Csv -Path "all-data.csv" -NoTypeInformation
