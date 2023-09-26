$i = 0
do
{
   Write-Host "Notepad is running"
   $i++
   Start-Sleep -Seconds 2
}
while(Get-Process notepad -ErrorAction SilentlyContinue | ?{$_.ProcessName -eq "notepad"})
Write-Host "Total iterations: $i"