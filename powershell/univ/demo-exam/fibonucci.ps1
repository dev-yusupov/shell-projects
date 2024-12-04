param(
    $n
)

if (-not $n)
{
    $n = Read-Host "Provide N: "
}

$fibonucci = New-Object System.Collections.Generic.List[Object]
$fibonucci.Add(1)
$fibonucci.Add(1)

while ($fibonucci.Count -lt $n)
{
    $newFib = $fibonucci[$fibonucci.Count - 1] + $fibonucci[$fibonucci.Count - 2]

    $fibonucci.Add($newFib)
}

Write-Output $fibonucci