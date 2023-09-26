Get-ChildItem -Path "C:\Users\Administrator\Downloads\Skriptid\Praktikum1/" # print out the whole path including the files inside
$file = Get-ChildItem -Path "C:\Users\Administrator\Downloads\Skriptid\Praktikum1/" | where {$_.Name -like "*.csv"} | Select Name,Length # finding the csv file # only works with 1!!!
$sizeinKB = $file.Length/1KB
$sizeinMB = $file.Length/1MB
# file size and name
Write-Host "`nFileName : "$file.Name 
Write-Host "Size in KB : "$sizeinKB
Write-Host "Size in MB : "$sizeinMB