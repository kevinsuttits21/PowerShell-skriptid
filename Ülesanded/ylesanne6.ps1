# check if C:\Backup is real and if it isnt then create it
$sourceDirectory = "C:\Users"
$destinationPath = "C:\Backup"

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


# kontrolli kasutajate olemasolu süsteemis ja igale kasutajale loome tema kodukataloogile varunduse, mis asub C:\Backup kasutas (ZIP)
# varunaduse loomisel iga kasutaja kodukataloog peab olema varundatud nimeha kasutajanimi-PP.MM.YYYY.zip


$folders = Get-ChildItem -Path $sourceDirectory -Directory

foreach ($folder in $folders) {
    $userName = $folder.Name
    if ($userName -ne "Public") {
    $backupFileName = "$destinationPath\$userName.zip"
 
    Compress-Archive -Path $folder.FullName -DestinationPath $backupFileName -Force
    Write-Host "Backup created for $userName - $backupFileName"
    }
}
