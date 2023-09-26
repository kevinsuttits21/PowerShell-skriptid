# määrame, kus on asumas fail, mille sees on kasutajate andmed
$Fail = "C:\Users\Administrator\Downloads\Skriptid\Praktikum1\kasutajad.csv"
# loeme failist sisu. Info jaotatakse ; järgi
$Kasutajad = Import-CSV $Fail -Encoding Default -Delimiter ";"
# failis iga kasutaja andmestik on eraldi reas
# vaatame faili sisu ridade kaupa
# selleks salvestame iga rida $kasutaja muutuja sisse
foreach ($kasutaja in $Kasutajad)
{ 
     # kuna reas on mitu väärtsust, siis iga element on kätte saadav veeru nimetuse järgi, milleks me paneme
     # $muutuja.VeeruNimetus kujul kirja
     $Kasutajanimi = $kasutaja.Kasutajanimi
     $Taisnimi = $kasutaja.Taisnimi
     $KontoKirjeldus = $kasutaja.KontoKirjeldus
     $Parool = $kasutaja.Parool | ConvertTo-SecureString -AsPlainText -Force
     # kasutades saadud infot, lisame kasutaja
     New-LocalUser -Name $Kasutajanimi -Password $Parool -FullName "$Taisnimi" -Description "$KontoKirjeldus"
}