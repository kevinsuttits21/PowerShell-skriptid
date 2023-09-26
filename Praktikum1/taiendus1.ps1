# defineerime vajaliku käsurea parameetrid
param(
 $Kasutajanimi,
 $Taisnimi,
 $Kontokirjeldus
 )

 # Toome kasutajale parooli!
 $KasutajaParool = ConvertTo-SecureString "qwerty123!" -AsPlainText -Force
 # lisame kasutaja vastavate andmetega
New-LocalUser "$Kasutajanimi" -Password $KasutajaParool -FullName "$Taisnimi" -Description "$Kontokirjeldus"