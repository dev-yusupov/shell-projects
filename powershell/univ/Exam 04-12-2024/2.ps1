<#

Create a script 2.ps1 which gets a number (n).  Write out all the even deviders of it! 
e.g. .\2.ps1 24 => 2 4 6 8 12 24 

#>

param(
    $number
)

$dividers = New-Object System.Collections.Generic.List[Object]

$i = 1

while ($i -le $number)
{
    if ($number % $i -eq 0)
    {
        $dividers.Add($i)
    }

    $i += 1
}


foreach ($num in $dividers)
{
    if ($num % 2 -eq 0)
    {
        Write-Output $num
    }
}
