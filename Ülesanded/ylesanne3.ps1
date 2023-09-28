# all olev skript on täiendus vanast skriptist!

# AD kasutajate faili asukoht
$file = "C:\Users\Administrator\Downloads\Skriptid\Praktikum2\adkasutajad.csv"
# importime faili sisu
$users = Import-Csv $file -Encoding UTF8 -Delimiter ";"

# muudame UTF-8 karakterid LATIN-iks
function Translit {
     param(
        [string] $inputString
     )
     # defineerime, mis kasutajaid translittida
     $Translit = @{
     [char]'ä' = "a"
     [char]'ö' = "o"
     [char]'ü' = "u"
     [char]'õ' = "o"
     }
     # loome outputi
     $outputString = ""
     # teeme vastavad toimingud
     foreach ($character in $inputString.ToCharArray()){

       if ($Translit.ContainsKey($character)) {
             $outputString += $Translit[$character]
           } else {
                $outputString += $character
            }
        }
    # väljastame töödeldud info
    Write-Output $outputString

}


foreach ($user in $users) {
    try {
        $firstName = $user.FirstName.ToLower()
        $lastName = $user.LastName.ToLower()
        $username = "$firstName.$lastName"
        $username = Translit $username
        # user principal name
        $upname = $username + "@sv-kool.local"
        $displayname = $user.FirstName + " " + $user.LastName
        New-ADUser -Name $username -DisplayName $displayname -GivenName $firstname -Surname $lastname -Department $user.Department -Title $user.Role -UserPrincipalName $upname -AccountPassword (ConvertTo-SecureString $user.Password -AsPlainText -force) -Enabled $true

        Write-Host "User created: $upname"
    }
    catch {
        Write-Host "User $username already exists - cannot add this user"
    }
}
