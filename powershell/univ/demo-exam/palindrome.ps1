param(
    $FilePath
)

function isPalindrome {
    param (
        [string]$n
    )
    
    $l = 0;
    $r = $n.Length - 1

    while ($l -lt $r)
    {
        if ($n[$l] -ne $n[$r]) {
            return $false
        }

        $l += 1
        $r -= 1
    }

    return $true
}

$FileContent = Get-Content $FilePath

foreach ($line in $FileContent)
{
    $result = isPalindrome $line

    Write-Output $result
}