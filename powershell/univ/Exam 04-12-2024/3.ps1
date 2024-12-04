<#

Create a script 3.ps1 which gets  a filename from the command line. Check whether the file is existing. 
The file contains numbers, 1 number in each line. Give the square root  of the sum of the numbers!

#>

param(
    $FilePath
)

if (Test-Path $FilePath)
{
    $numbers = Get-Content $FilePath

    $sum = 0

    foreach ($number in $numbers)
    {
        $sum += $number
    }
    
    $sqrt = [math]::Sqrt($sum)

    Write-Output $sqrt

} else {
    Write-Output "File is not provided"
}
