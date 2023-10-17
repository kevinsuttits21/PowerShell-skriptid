# impordime AD mooduli
Import-Module ActiveDirectory
 
# küsime kasutaja nime (eesnimi.perekonnanimi) formaadis
$Username = Read-Host "Sisestage päringuks kasutajanimi (eesnimi.perekonnanimi)"
 
# vaatame, kas kasutaja on olemas
$User = Get-ADUser -Filter {SamAccountName -eq $Username}
 
if ($User) {
    # väljastame infot
    Write-Host "Kasutaja informatsioon kasutajale $Username"
    $User | Format-Table -AutoSize | Out-String 
    $User | Out-Host
} else {
    Write-Host "Kasutaja $Username ei ole leitav AD-s."
}
 
# ärme kohe kinni pane
pause
