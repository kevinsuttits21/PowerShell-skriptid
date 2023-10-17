# saame kõik avatud TCP Ühendused
$tcp = Get-NetTCPConnection
# saame kõik avatud UDP endpointid
$udp = Get-NetUDPEndpoint
 
# väljastame andmed ilusalt
Write-Host "Avatud TCP ühendused"
$tcp | Format-Table -AutoSize
 
Write-Host "Avatud UDP endpointid"
$udp | Format-Table -AutoSize
