param(
    $FilePath
)

if (-not $FilePath) {
    $FilePath = Read-Host "Provide file"
}

$FileContent = Get-Content $FilePath

$countIp = 0
$countUser = 0

foreach ($line in $FileContent)
{
    $data = $line.Split(" ")

    if ($data.Length -eq 2)
    {
        $countIp = $countIp + 1
        $countUser = $countUser + 1
    }
}

Write-Output "Total number of users: $countUser"
Write-Output "Total number of IPs: $countIp"