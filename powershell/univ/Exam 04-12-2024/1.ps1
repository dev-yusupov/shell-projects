<#

Create a script 1.ps1 which gets two sentences  from the command line and out the longer!
If there were no command line parameters, read them from the keyboard. (You do not have to check the type of the values)
e.g. .\1.ps1 "Apple tree" "It is a nice trial" => "it is a nice trial"

#>

param(
    [string]$sentence1,
    [string]$sentence2
)

if (-not $sentence1) {
    [string]$sentence1 = Read-Host
}

if (-not $sentence2) {
    [string]$sentence2 = Read-Host
}


if ($sentence1.Length -gt $sentence2.Length)
{
    Write-Output $sentence1
} else {
    
    Write-Output $sentence2
}
