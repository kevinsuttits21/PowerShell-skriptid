# clear the previous stuff in the console
Clear-Host
# do while loop
do {
# helpful text as outputs
Write-Host "Area Calculator" -ForegroundColor Green
echo ""
Write-Host "Main Menu:" -ForegroundColor Yellow
write-host "Please select one of the options below." -ForegroundColor Yellow

Write-Host "1: Area of a square" -ForegroundColor Green
Write-Host "2: Area of a rectangle" -ForegroundColor Green
Write-Host "3: Area of a circle" -ForegroundColor Green
Write-Host "4: Area of a triangle" -ForegroundColor Green
Write-Host "5: Exit" -ForegroundColor Green

# user's input
$answer = Read-Host "Enter your choice"

# check what was chosen, ask for the necessary information amd calculate the area
# also replace commas with dots
switch($answer)
  {
   1
    {
     Clear-Host
     Write-Host "Area of the square" -ForegroundColor Green
     [float]$side = Read-Host "Enter the side of the square"
     [float]$area = $side * $side
     Write-Host "Area of the square:"$area
    }
   2
    {
     Clear-Host
     Write-Host "Area of the rectangle" -ForegroundColor Green
     [float]$side = Read-Host "Enter side A of the rectangle"
     [float]$side2 = Read-Host "Enter side B of the rectangle"
     [float]$area = $side * $side2
     Write-Host "Area of the rectangle:"$area
    }
   3
    {
     Clear-Host
     Write-Host "Area of the circle" -ForegroundColor Green
     [float]$radius = Read-Host "Enter the radius of the circle"
     [float]$area = $radius * $radius * [math]::pi
     Write-Host "Area of the circle:"$area
    }
   4
    {
     Clear-Host
     Write-Host "Area of the triangle" -ForegroundColor Green
     [float]$side = Read-Host "Enter side A of the triangle"
     [float]$side2 = Read-Host "Enter side B of the triangle"
     [float]$side3 = Read-Host "Enter side C of the triangle"
     [float]$s = ($side + $side2 + $side3) / 2
     [float]$area = [Math]::Sqrt($s * ($s - $side) * ($s - $side2) * ($s - $side3))
     Write-Host "Area of the triangle:"$area
    }
   5
    {
     Clear-Host
     echo "Bye!"
     Exit # exit from the script
    }
    default {
            Write-Host "Invalid choice. Please select a valid option." -ForegroundColor Red # if the users input was not an acceptable one
            }
  }
# end of the switch function

# ask the user if they want to return to the main menu or exit
if($answer -ne "5"){
      Write-Host "Please select the next option:" -ForegroundColor Yellow
      Write-Host "1: Return to Main Menu" -ForegroundColor Green
      Write-Host "2: Exit" -ForegroundColor Green
      $choose = Read-Host "Enter your choice"
      Clear-Host
    }
} while ($choose -eq "1")
echo "Bye!" # end of script