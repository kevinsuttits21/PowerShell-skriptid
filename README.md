# Powershell-skriptid
Aine haldustegevuste automatiseerimine PowerShell skriptid.

# Kuidas skripte käivitada?

Enne skriptide käivitamiseks pead lubama süsteemis skriptide käivitamist.
Selle tegemiseks käivita Windows Powershell administratiivsete õigustega ja kirjuta see lause oma PowerShell terminalli:
```
set-executionpolicy remotesigned (Hoiatus! See käsk muudab ära mainitud poliitikat permanentselt)
```
Skripte saad käivitada niimoodi: kopeerid skripti sisu oma Windows masinas oleva Powershell faili sisse (nt skript.ps1) või laed ise alla siit repositooriumist.

Järgmisena avad kas Windows PowerShell ISE või Windows PowerShell'i. 

Nende vahe on selles, et ISE teeb lihtsamaks PowerShelli kasutamise.

Windows PowerShell ISE-s saad valida ise faili või seda luua kergesti ja selle käivitamiseks on programmis olemas eraldi nupp.

Samuti võid kasutada ka Linux käske all olevas terminalis, et liikuda sinna, kus fail asub ja seda käivitada niimoodi näiteks:
```
./skript.ps1 (./ tähendab hetkest asukohta ja siis skripti fail on skript.ps1)
```

Kui sa valisid ISE asemel lihtsalt Windows PowerShelli, siis sa pead jälgima eelmisi samme.

# Linux tugi?
Linuxis on võimalik käivitada PowerShell skripte PowerShell Core abil.
Selle paigaldamiseks on dokumentatsioon olemas siin: 

https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-linux?view=powershell-7.3

# Mõned näidistulemused skriptidest:
![image](https://github.com/kevinsuttits21/Powershell-skriptid/assets/93242927/136e1e41-4085-48a1-bda7-4a5a85f4e10f)

![image](https://github.com/kevinsuttits21/Powershell-skriptid/assets/93242927/aecd3358-0611-4f28-aa40-3a8987cb526e)


# Powershell skriptid
### PowerShellforbeginners
* [__esimene.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/esimene.ps1) - Array'de õppimiseks mõeldud skript
* [__teine.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/teine.ps1) - Hashtable'ite õppimiseks mõeldud skript
* [__kolmas.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/kolmas.ps1) - Read-Host ja Write-Host õppimiseks mõeldud skript
* [__neljas.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/neljas.ps1) - If loop harjutamiseks mõeldud skript
* [__neljaspt2.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/neljaspt2.ps1) - Veel üks if loop harjutus
* [__viies.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/viies.ps1) - Get-Process tundma õppimiseks mõeldud skript
* [__viiespt2.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/viiespt2.ps1) - Faili suurustega näppimiseks ja Get-ChildItem'i tundmiseks mõeldud skript
* [__kuues.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/kuues.ps1) - CSV failiga käsitlemiseks mõeldud skript
* [__seitsmes.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/seitsmes.ps1) - Tõenäosuse harjutamiseks mõeldud skript
* [__kaheksas.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/kaheksas.ps1) - While loopi harjutamiseks mõeldud skript
* [__yheksas.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/yheksas.ps1) - Do While loopi harjutamiseks mõeldud skript
* [__kymnes.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/kymnes.ps1) - Do Until loopi harjutamiseks mõeldud skript
* [__yheteistkymnes.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/yheteistkymnes.ps1) - Kerge kalkulaator
* [__kaheteistkymnes.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/kaheteistkymnes.ps1) - Function'ite õppimiseks mõeldud skript
* [__kaheteistkymnespt2.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/kaheteistkymnespt2.ps1) - Veel üks Function harjutus
* [__kolmteist.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Powershellforbeginners/kolmteist.ps1) - Suurem kalkulaator (PINDALATE JAOKS!)

### Praktikum1
* [__args.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Praktikum1/args.ps1) - Args'i õppimiseks mõeldud skript
* [__kasutajaloomine.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Praktikum1/kasutajaloomine.ps1) - Lihtne lokaalse kasutaja loomiseks mõeldud skript
* [__kasutajateskript.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Praktikum1/kasutajateksript.ps1) - Skript, mille põhimõte on CSV faili abil luua lokaalseid kasutajaid
* [__taiendus1.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Praktikum1/taiendus1.ps1) - Käsurea parameetrite abil kasutaja loomiseks mõeldud skript
* [__taiendus2.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Praktikum1/taiendus2.ps1) - Args'ide abil kasutaja loomiseks mõeldud skript

### Praktikum2
* [__create_ad_users.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/Praktikum2/create_ad_users.ps1) - Skript, mille põhimõte on CSV faili abil luua AD kasutajaid

### Ülesanded
* [__ylesanne1.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/%C3%9Clesanded/ylesanne1.ps1) - Täiendatud lokaalsete kasutajate loomise skript
* [__ylesanne2.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/%C3%9Clesanded/ylesanne2.ps1) - Skript, mille põhimõte on kustutada lokaalseid kasutajaid
* [__ylesanne3.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/%C3%9Clesanded/ylesanne3.ps1) - Täiendatud AD kasutajate loomise skript
* [__ylesanne4.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/%C3%9Clesanded/ylesanne4.ps1) - Skript, mille põhimõte on kustutada AD kasutajaid
* [__ylesanne5.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/%C3%9Clesanded/ylesanne5.ps1) - Täiendatud AD kasutajate loomise skript
* [__ylesanne6.ps1__](https://github.com/kevinsuttits21/Powershell-skriptid/blob/main/%C3%9Clesanded/ylesanne6.ps1) - Skript, mille põhimõte on luua varundusi AD kasutajate kodukataloogidest
