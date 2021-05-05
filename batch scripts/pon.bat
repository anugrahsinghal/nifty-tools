@echo off
cls
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
taskkill /IM "vpnui.exe" /F
vpncli.lnk connect %PROXY_ADDRESS% -s < C:\softwares\batch-scripts\response.txt

start /min ms-settings:network-proxy
taskkill /IM SystemSettings.exe /f

exit