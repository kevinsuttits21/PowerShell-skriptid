[int]$arv1 = Read-Host "Enter first number: "
[int]$arv2 = Read-Host "Enter second number: "
Write-Host "Calculator" -ForegroundColor Green
Write-Host "1. Addition" -ForegroundColor Yellow
Write-Host "2. Subtraction" -ForegroundColor Yellow
Write-Host "3. Division" -ForegroundColor Yellow
Write-Host "4. Multiplication" -ForegroundColor Yellow

$vastus = Read-Host "Enter your choice: "

# do what was chosen
switch($vastus)
 {
  1
   {
    $toiming = $arv1 + $arv2
    Write-Host "Answer is"$toiming
   }
  2
   { 
    $toiming = $arv1 - $arv2
    Write-Host "Answer is"$toiming
   }
  3
   {
    $toiming = $arv1 / $arv2
    Write-Host "Answer is"$toiming
   }
  4
   {
    $toiming = $arv1 * $arv2
    Write-Host "Answer is"$toiming
   }
 }

