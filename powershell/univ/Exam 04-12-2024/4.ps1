<#

Create a script 4.ps1 which gets  a filename from the command line.  
The file contains two words in each line.  Write out the second worlds line by line.

e.g. .\4.ps1 words.txt => plum
                                                     melon
                                                     cherry

                  //if the words.txt file contains 3 lines: apple plum, orange melon, banana cherry

#>

param(
    $FilePath
)

if (Test-Path $FilePath)
{
    $content = Get-Content $FilePath

    foreach ($line in $content)
    {
        $array = $line.Split(" ")

        Write-Output $array[1]
    }
}
else {
    Write-Output "No file provided"
}
