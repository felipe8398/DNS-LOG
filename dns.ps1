param ($PathLog, $String)
write-host ""
write-host ""
write-host ""
write-host "Realizando a busca da palavra $String no log $PathLog"
write-host ""
write-host ""
write-host ""
Get-Content $PathLog | select-string $String | Select-String -pattern "Name" -notmatch | ForEach-Object -Process { $_ -replace '\s{1,}', ',' } | ConvertFrom-Csv -Delimiter "," -Header Data,Hora,Tempo,4,5,6,Protocolo,In/Out,IP,10,11,12,13,14,DNS-Request-Type,Dominio | Format-Table -Property Data,Hora,Tempo,Protocolo,In/Out,IP,DNS-Request-Type,Dominio -AutoSize

