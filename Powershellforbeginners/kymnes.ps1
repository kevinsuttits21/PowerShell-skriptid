$i = 0
do
{
    Write-Host "Notepad is running"
    $i++
    Start-Sleep -Seconds 2
}
until (!(Get-Process notepad -ErrorAction SilentlyContinue | Where-Object {$_.ProcessName -eq "notepad"}))

Write-Host "Notepad is no longer running."
Write-Host "Total iterations: $i"
