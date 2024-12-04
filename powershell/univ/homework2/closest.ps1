$file = ".\data.txt"

$data = Get-Content $file

$closest = 0

foreach ($line in $data)
{
    $line = $line.Split(", ")

    foreach ($point in $line[1..($line.Length - 1)])
    {
        $point = [float]$point

        if ($closest -eq 0) {
            $closest = $point
        } else {
            if ($closest -gt $point)
            {
                $closest = $point
            }
        }
    }
}

$closest