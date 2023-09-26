$groups = @("Red", "Green", "Yellow", "Blue") # color group
$result = @() # result group

for($i = 1 ; $i -le 20 ; $i++)
   {
     $a = Get-Random $groups # randomly choose one of the colors
     $b = [PSCustomObject]@{
     number = $i # number of roll
     group = $a # group color
     }
   $result += $b # add into the array the variables
}
$result #print out the result
   