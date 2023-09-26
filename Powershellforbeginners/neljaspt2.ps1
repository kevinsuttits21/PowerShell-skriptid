$arv1 = Read-Host "Write one number: "
$arv2 = Read-Host "Write another number: "
# check which number is higher
if($arv1 -gt $arv2)
  {
   Write-Host "The higher number is:"$arv1
  }
  else
  {
   Write-Host "The higher number is:"$arv2
  }
