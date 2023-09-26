while(Get-Process notepad -ErrorAction SilentlyContinue | ?{$_.ProcessName -eq "notepad"})
{
  Write-Host "Notepad is running" 
  Start-Sleep -Seconds 2
}

