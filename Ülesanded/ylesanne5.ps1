# AD accounts csv file location
$file = "C:\Users\Administrator\Downloads\Skriptid\Praktikum2\adkasutajad.csv"
# import the contents of the file
$users = Import-Csv $file -Encoding UTF8 -Delimiter ";"

# an array to store updated user objects
$updatedUsers = @()

# generate a strong password for users
Function GenerateStrongPassword ([Parameter(Mandatory=$true)][int]$PasswordLength)
{
    Add-Type -AssemblyName System.Web
    $PassComplexCheck = $false
    do {
        $newPassword = [System.Web.Security.Membership]::GeneratePassword($PasswordLength, 1)
        If ( ($newPassword -cmatch "[A-Z\p{Lu}\s]") `
        -and ($newPassword -cmatch "[a-z\p{Ll}\s]") `
        -and ($newPassword -match "[\d]") `
        -and ($newPassword -match "[^\w]")
        )
        {
            $PassComplexCheck = $True
        }
    } While ($PassComplexCheck -eq $false)
    return $newPassword
}

# Muudame UTF-8 karakterid LATIN-iks
function Translit {
    param(
        [string] $inputString
    )
    # Defineerime, mis kasutajaid transliteerida
    $Translit = @{
        [char]'ä' = "a"
        [char]'ö' = "o"
        [char]'ü' = "u"
        [char]'õ' = "o"
    }
    # Loome outputi
    $outputString = ""
    # Teeme vastavad toimingud
    foreach ($character in $inputString.ToCharArray()){
        if ($Translit.ContainsKey($character)) {
            $outputString += $Translit[$character]
        } else {
            $outputString += $character
        }
    }
    # Väljastame töödeldud info
    Write-Output $outputString
}

# process users and create updated user objects
foreach ($user in $users) {
    try {
        $firstName = $user.FirstName.ToLower()
        $lastName = $user.LastName.ToLower()
        $username = "$firstName.$lastName"
        $username = Translit $username
        # user principal name
        $upname = $username + "@sv-kool.local"
        $displayname = $user.FirstName + " " + $user.LastName
        $safepass = GenerateStrongPassword 10

        # create an updated user object with the new password
        $updatedUser = [PSCustomObject]@{
            'FirstName' = $user.FirstName
            'LastName' = $user.LastName
            'Department' = $user.Department
            'SamAccountName' = $user.SamAccountName
            'Role' = $user.Role
            'Password' = $safepass
        }
        $updatedUsers += $updatedUser

        # create the AD user
        New-ADUser -Name $username -DisplayName $displayname -GivenName $firstname -Surname $lastname -Department $user.Department -Title $user.Role -UserPrincipalName $upname -AccountPassword (ConvertTo-SecureString $safepass -AsPlainText -Force) -Enabled $true

        Write-Host "User created: $upname"
    }
    catch {
        Write-Host "User $username already exists - cannot add this user"
    }
}

# export the updated user information to a new CSV file
$destinationFile = "C:\Users\Administrator\Downloads\Skriptid\Ülesanded\kasutajanimi.csv"
$updatedUsers | Export-Csv $destinationFile -Encoding UTF8 -Delimiter ";" -NoTypeInformation
