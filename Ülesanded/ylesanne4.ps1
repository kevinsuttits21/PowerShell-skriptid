# user input
$vastus = Read-Host "Sisestage kasutaja eesnimi"
$vastus2 = Read-Host "Sisestage kasutaja perenimi"

# try to delete and if it won't work, than output an error message to the user
try {
     $vastus = $vastus.ToLower()
     $vastus2 = $vastus2.ToLower()
     $nimi = $vastus + "." + $vastus2 # get the fully desired user name
     Remove-ADUser $nimi # delete the user from the domain

     Write-Host "User is successfully deleted!"
     }
   catch {
      Write-Host "User $nimi does not exist!" # output if user is not in the domain
      }