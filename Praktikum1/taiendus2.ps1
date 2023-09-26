# kontrollime edastatud parameetrite arvu
if($args.Count -ne 3 ){
              # kui edastatud parameetrite arv ei ole 3
              # siis trükime kasutusjuhendi
          echo "Palun sisestage kolm parameetrit!"
}        else {
        # defineerime muutujad argumentide andmete salvestamiseks
        $Kasutajanimi = $args[0]
        $Taisnimi = $args[1]
        $Kontokirjeldus = $args[2]
        # loome kasutajale parooli
        $KasutajaParool = ConvertTo-SecureString "qwerty123!" -AsPlainText -Force
        # lisame kasutaja vastavate andmetega
        New-LocalUser "$Kasutajanimi" -Password $KasutajaParool -FullName "$Taisnimi" -Description "$Kontokirjeldus"
}