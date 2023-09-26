Write-Host "Select Country: " -ForegroundColor Yellow
Write-Host "1 : India" -ForegroundColor Cyan
Write-Host "2 : Australia" -ForegroundColor Cyan
Write-Host "3 : China" -ForegroundColor Cyan
$valik = Read-Host "Please select country: " # the choice is made here
if($valik -eq 1)
{ 
  Write-Host "India's capital is New Delhi" -ForegroundColor Green
  }
  elseif($valik -eq 2)
  {
   Write-Host "Australia's capital is Canberra" -ForegroundColor Green
   }
   elseif($valik -eq 3)
   {
    Write-Host "China's capital is Beijing" -ForegroundColor Green
    }
