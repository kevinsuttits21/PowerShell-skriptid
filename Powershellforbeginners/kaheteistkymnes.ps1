function countrunning
  {

    $toiming = Get-Service | ?{$_.Status -eq "Running"}
    Write-Host "Total services in running state ="$toiming.count
  }

function countstopped
  {
   $toiming2 = Get-Service | ?{$_.Status -eq "Stopped"}
   Write-Host "Total services in stopped state ="$toiming2.count
  }

countrunning

countstopped