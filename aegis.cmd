@echo off

echo -/- aegis v1.10 by https://voat.co/u/thepower (https://tiny.cc/aegis-voat)
echo.

echo * create system restore point ...
echo.

start /b /i /wait wscript.exe "%~dp0rpoint.vbs"

echo [ press enter to continue ]
pause >nul

echo.
echo.

echo * disable ceip/gwx/skydrive/spynet/telemetry/wifisense ...
echo.
echo.

taskkill /f /im gwx.exe /t >nul 2>nul

"%~dp0setacl.exe" -on "hkey_current_user\software\policies\microsoft\office\15.0\osm" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_current_user\software\policies\microsoft\office\15.0\osm" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_current_user\software\policies\microsoft\office\16.0\osm" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_current_user\software\policies\microsoft\office\16.0\osm" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\windows defender\spynet" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\windows defender\spynet" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\sqmclient\windows" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\sqmclient\windows" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\datacollection" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\datacollection" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\gwx" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\gwx" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\skydrive" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\skydrive" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\windowsupdate" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\windowsupdate" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\system\currentcontrolset\services\w32time\parameters" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\system\currentcontrolset\services\w32time\parameters" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient" -ot reg -actn setowner -ownr n:administrators >nul 2>nul
"%~dp0setacl.exe" -on "hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient" -ot reg -actn ace -ace "n:administrators;p:full" >nul 2>nul

reg delete "hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener" /f >nul 2>nul

regedit /S "%~dp0aegis.reg" >nul 2>nul

echo * sync time to pool.ntp.org ...
echo.

w32tm /config /syncfromflags:manual /manualpeerlist:"pool.ntp.org" /update /reliable:yes >nul 2>nul
w32tm /resync >nul 2>nul

timeout 2 >nul
echo.

echo * disable windows 10 download directory ...
echo.

"%~dp0setacl.exe" -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:np;sacl:nc -rec cont_obj -actn setowner -ownr n:administrators >nul 2>nul
rmdir /q /s "%systemdrive%\$windows.~bt" >nul 2>nul
mkdir "%systemdrive%\$windows.~bt" >nul 2>nul
attrib +h "%systemdrive%\$windows.~bt" >nul 2>nul
"%~dp0setacl.exe" -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:p_nc;sacl:p_nc -rec cont_obj -actn setowner -ownr n:administrators >nul 2>nul

timeout 2 >nul
echo.

echo * uninstall updates ...
echo.

echo uninstall 971033  (https://support.microsoft.com/en-us/kb/971033)
start /w wusa /kb:971033 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 2882822 (https://support.microsoft.com/en-us/kb/2882822)
start /w wusa /kb:2882822 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 2902907 (https://support.microsoft.com/en-us/kb/2902907)
start /w wusa /kb:2902907 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 2922324 (https://support.microsoft.com/en-us/kb/2922324)
start /w wusa /kb:2922324 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 2952664 (https://support.microsoft.com/en-us/kb/2952664)
start /w wusa /kb:2952664 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 2976978 (https://support.microsoft.com/en-us/kb/2976978)
start /w wusa /kb:2976978 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 2977759 (https://support.microsoft.com/en-us/kb/2977759)
start /w wusa /kb:2977759 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 2990214 (https://support.microsoft.com/en-us/kb/2990214)
start /w wusa /kb:2990214 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 2999226 (https://support.microsoft.com/en-us/kb/2999226)
start /w wusa /kb:2999226 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3012973 (https://support.microsoft.com/en-us/kb/3012973)
start /w wusa /kb:3012973 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3014460 (https://support.microsoft.com/en-us/kb/3014460)
start /w wusa /kb:3014460 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3015249 (https://support.microsoft.com/en-us/kb/3015249)
start /w wusa /kb:3015249 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3021917 (https://support.microsoft.com/en-us/kb/3021917)
start /w wusa /kb:3021917 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3022345 (https://support.microsoft.com/en-us/kb/3022345)
start /w wusa /kb:3022345 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3035583 (https://support.microsoft.com/en-us/kb/3035583)
start /w wusa /kb:3035583 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3042058 (https://support.microsoft.com/en-us/kb/3042058)
start /w wusa /kb:3042058 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3044374 (https://support.microsoft.com/en-us/kb/3044374)
start /w wusa /kb:3044374 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3046480 (https://support.microsoft.com/en-us/kb/3046480)
start /w wusa /kb:3046480 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3050265 (https://support.microsoft.com/en-us/kb/3050265)
start /w wusa /kb:3050265 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3050267 (https://support.microsoft.com/en-us/kb/3050267)
start /w wusa /kb:3050267 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3064683 (https://support.microsoft.com/en-us/kb/3064683)
start /w wusa /kb:3064683 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3065987 (https://support.microsoft.com/en-us/kb/3065987)
start /w wusa /kb:3065987 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3065988 (https://support.microsoft.com/en-us/kb/3065988)
start /w wusa /kb:3065988 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3068708 (https://support.microsoft.com/en-us/kb/3068708)
start /w wusa /kb:3068708 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3072318 (https://support.microsoft.com/en-us/kb/3072318)
start /w wusa /kb:3072318 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3074677 (https://support.microsoft.com/en-us/kb/3074677)
start /w wusa /kb:3074677 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3075249 (https://support.microsoft.com/en-us/kb/3075249)
start /w wusa /kb:3075249 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3075851 (https://support.microsoft.com/en-us/kb/3075851)
start /w wusa /kb:3075851 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3075853 (https://support.microsoft.com/en-us/kb/3075853)
start /w wusa /kb:3075853 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3080149 (https://support.microsoft.com/en-us/kb/3080149)
start /w wusa /kb:3080149 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3081437 (https://support.microsoft.com/en-us/kb/3081437)
start /w wusa /kb:3081437 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3081454 (https://support.microsoft.com/en-us/kb/3081454)
start /w wusa /kb:3081454 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3081954 (https://support.microsoft.com/en-us/kb/3081954)
start /w wusa /kb:3081954 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3083324 (https://support.microsoft.com/en-us/kb/3083324)
start /w wusa /kb:3083324 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3083325 (https://support.microsoft.com/en-us/kb/3083325)
start /w wusa /kb:3083325 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3083710 (https://support.microsoft.com/en-us/kb/3083710)
start /w wusa /kb:3083710 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3083711 (https://support.microsoft.com/en-us/kb/3083711)
start /w wusa /kb:3083711 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3086255 (https://support.microsoft.com/en-us/kb/3086255)
start /w wusa /kb:3086255 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3088195 (https://support.microsoft.com/en-us/kb/3088195)
start /w wusa /kb:3088195 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3090045 (https://support.microsoft.com/en-us/kb/3090045)
start /w wusa /kb:3090045 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3093983 (https://support.microsoft.com/en-us/kb/3093983)
start /w wusa /kb:3093983 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3102810 (https://support.microsoft.com/en-us/kb/3102810)
start /w wusa /kb:3102810 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3102812 (https://support.microsoft.com/en-us/kb/3102812)
start /w wusa /kb:3102812 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3112343 (https://support.microsoft.com/en-us/kb/3112343)
start /w wusa /kb:3112343 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3112336 (https://support.microsoft.com/en-us/kb/3112336)
start /w wusa /kb:3112336 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3123862 (https://support.microsoft.com/en-us/kb/3123862)
start /w wusa /kb:3123862 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3135445 (https://support.microsoft.com/en-us/kb/3135445)
start /w wusa /kb:3135445 /norestart /quiet /uninstall >nul 2>nul
echo uninstall 3135449 (https://support.microsoft.com/en-us/kb/3135449)
start /w wusa /kb:3135449 /norestart /quiet /uninstall >nul 2>nul

echo.

timeout 2 >nul
echo.

echo * hide updates (this may take a while, be patient) ...
echo.

start /b /wait cscript.exe "%~dp0hide.vbs" 971033 2882822 2902907 2922324 2952664 2976978 2977759 2990214 2999226 3012973 3014460 3015249 3021917 3022345 3035583 3042058 3044374 3046480 3050265 3050267 3064683 3065987 3065988 3068708 3072318 3074677 3075249 3075851 3075853 3080149 3081437 3081454 3081954 3083324 3083325 3083710 3083711 3086255 3088195 3090045 3093983 3102810 3102812 3112343 3112336 3123862 3135445 3135449
echo.

timeout 2 >nul
echo.

echo * disable scheduled tasks ...
echo.

schtasks /change /disable /tn "\microsoft\windows\application experience\aitagent" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\application experience\microsoft compatibility appraiser" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\application experience\programdataupdater" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\autochk\proxy" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\customer experience improvement program\consolidator" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\customer experience improvement program\kernelceiptask" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\customer experience improvement program\usbceip" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\diskdiagnostic\microsoft-windows-diskdiagnosticdatacollector" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\maintenance\winsat" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\activatewindowssearch" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\configureinternettimeservice" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\dispatchrecoverytasks" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\ehdrminit" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\installplayready" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\mcupdate" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\mediacenterrecoverytask" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\objectstorerecoverytask" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\ocuractivate" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\ocurdiscovery" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\pbdadiscovery">nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\pbdadiscoveryw1" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\pbdadiscoveryw2" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\pvrrecoverytask" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\pvrscheduletask" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\registersearch" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\reindexsearchroot" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\sqlliterecoverytask" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\media center\updaterecordpath" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\pi\sqm-tasks" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\power efficiency diagnostics\analyzeSystem" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\setup\gwx\refreshgwxconfigandcontent" >nul 2>nul
schtasks /change /disable /tn "\microsoft\windows\windows error reporting\queuereporting" >nul 2>nul
echo.

timeout 2 >nul

echo * remove diagtrack ...
echo.

sc stop diagtrack >nul 2>nul
sc delete diagtrack >nul 2>nul

timeout 2 >nul
echo.

echo * disable remote registry ...
echo.

sc config remoteregistry start= disabled >nul 2>nul
sc stop remoteregistry >nul 2>nul
echo.

timeout 2 >nul

echo * block hosts ...
timeout 1 >nul
echo.

"%~dp0block.cmd"
