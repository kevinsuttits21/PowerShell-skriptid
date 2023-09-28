# Vajaliku info küsimine
$eesnimi = Read-Host "Sisestage oma eesnimi"
$perenimi = Read-Host "Sisestage oma perekonnanimi"
# igaks juhuks teeme muutujate tähed väikesteks kontonime jaoks
$uuseesnimi = $eesnimi.ToLower()
$uusperenimi = $perenimi.ToLower() 

# paneme nime kokku (eraldame punktiga)
$kontonimi = $uuseesnimi + "." + $uusperenimi


# väljastame kasutaja nimi, mida kustutakse süsteemis
Write-Host "Kustutatav kasutaja on $kontonimi"

# kustutame kasutaja ära SamAccountName-i järgi!
try {
    Remove-ADUser -Identity $kontonimi
    Write-Host "Kasutaja $kontonimi on kustutatud!" # väljastame hea teade

}
# kui tekib viga, siis teavitame sellest!
catch {
    Write-Host "Tekkis probleem kasutaja kustutamisega!"

}
