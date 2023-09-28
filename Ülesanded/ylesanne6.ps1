
$sourceDirectory = "C:\Users"
$destinationPath = "C:\Backup"
# kontrolli asukohta ja loo kui vaja
if (-not (Test-Path -Path $destinationPath -PathType Container)) {
    try {
        New-Item -Path $destinationPath -ItemType Directory -Force
        Write-Host "Destination directory created: $destinationPath"
    } catch {
        Write-Host "Failed to create the destination directory: $destinationPath"
    }
} else {
    Write-Host "Destination directory already exists: $destinationPath"
}


# päev, kuu ja aasta
$currentDate = Get-Date
$day = $currentDate.Day
$month = $currentDate.Month
$year = $currentDate.Year
# kontrolli kasutajate olemasolu süsteemis ja igale kasutajale loome tema kodukataloogile varunduse, mis asub C:\Backup kasutas (ZIP)
# varunaduse loomisel iga kasutaja kodukataloog peab olema varundatud nimeha kasutajanimi-PP.MM.YYYY.zip


$folders = Get-ChildItem -Path $sourceDirectory -Directory

foreach ($folder in $folders) {
    $foldername = $folder.Name
    if ($foldername -ne "Public") {
       
        $destinationFolder = Join-Path -Path $destinationPath -ChildPath $foldername

        Copy-Item -Path $folder.FullName -Destination $destinationFolder -Recurse -Force

        $date = $foldername + "-" + $day + "." + $month + "." + $year
        $backupFileName = Join-Path -Path $destinationPath -ChildPath "$date.zip"

       
        Compress-Archive -Path $destinationFolder -DestinationPath $backupFileName -Force

        Remove-Item -Path $destinationFolder -Recurse -Force

        Write-Host "Backup created for $foldername - $backupFileName"
    }
}
