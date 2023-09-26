function countservices
 {
  param
   (
    [string]$status
   )
  if($status -eq "Running")
   {
     $toiming = Get-Service | ?{$_.Status -eq "Running"}
     Write-Host "Total services in running state ="$toiming.count
    }
   elseif($status -eq "Stopped")
    {
     $toiming = Get-Service | ?{$_.Status -eq "Stopped"}
     Write-Host "Total services in stopped state ="$toiming.count
    }
}
