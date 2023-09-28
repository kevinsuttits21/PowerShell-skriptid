# Vajaliku info küsimine
$eesnimi = Read-Host "Sisestage oma eesnimi"
$perenimi = Read-Host "Sisestage oma perekonnanimi"
# igaks juhuks teeme muutujate tähed väikesteks kontonime jaoks
$uuseesnimi = $eesnimi.ToLower()
$uusperenimi = $perenimi.ToLower() 

# paneme nime kokku (eraldame punktiga)
$kontonimi = $uuseesnimi + "." + $uusperenimi
# täis nimi
$taisnimi = $eesnimi + " " + $perenimi
# sätime parooli kasutajale
$parool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force

# väljastame uue kasutaja nimi, mida luuakse süsteemis
Write-Host "Loodav kasutaja on $kontonimi"

# loome kasutaja (ja ka veateade kui vaja!)
try {
    New-LocalUser "$kontonimi" -Password $parool -FullName "$taisnimi" -Description "Lokaalne kasutaja"
}
# kui tekib viga, siis teavitame sellest!
catch {
  Write-Host "Tekkis probleem kasutaja loomisega!"
}