$KasutajaParool = ConvertTo-SecureString "qwerty123!" -AsPlainText -Force

New-LocalUser "kasutaja1" -Password $KasutajaParool -FullName "Esimene kasutaja" -Description "Local Account - kasutaja1"
