@echo off

echo.
echo.
echo -/- aegis v1.11 by https://voat.co/u/thepower
echo -/- visit https://tiny.cc/aegis-voat for updates
echo.
echo.

echo * create system restore point (esc to skip) ...

echo.
start /b /i /wait wscript.exe rpoint.vbs >aegis.log 2>&1

echo [ any key to continue ]
pause >nul

echo.
echo.

echo * block hosts ...

start /b /wait block.cmd >>aegis.log 2>&1

echo.
echo.

echo * disable automatic delivery of internet explorer via windows update ...

echo.
echo  - disable ie7 delivery  (http://www.microsoft.com/en-us/download/details.aspx?id=13428)
start /b /wait disable7.cmd %computername% /B >>aegis.log 2>&1
echo  - disable ie8 delivery  (http://www.microsoft.com/en-us/download/details.aspx?id=14149)
start /b /wait disable8.cmd %computername% /B >>aegis.log 2>&1
echo  - disable ie9 delivery  (http://www.microsoft.com/en-us/download/details.aspx?id=179)
start /b /wait disable9.cmd %computername% /B >>aegis.log 2>&1
echo  - disable ie10 delivery (https://www.microsoft.com/en-us/download/details.aspx?id=36512)
start /b /wait disable10.cmd %computername% /B >>aegis.log 2>&1
echo  - disable ie11 delivery (http://www.microsoft.com/en-us/download/details.aspx?id=40722)
start /b /wait disable11.cmd %computername% /B >>aegis.log 2>&1

echo.
echo.

echo * disable ceip/gwx/skydrive/spynet/telemetry/wifisense ...

taskkill /f /im gwx.exe /t >>aegis.log 2>&1

setacl.exe -on "hkey_current_user\software\policies\microsoft\office\15.0\osm" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_current_user\software\policies\microsoft\office\15.0\osm" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_current_user\software\policies\microsoft\office\16.0\osm" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_current_user\software\policies\microsoft\office\16.0\osm" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\microsoft\windows defender\spynet" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\microsoft\windows defender\spynet" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\policies\microsoft\sqmclient\windows" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\policies\microsoft\sqmclient\windows" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\datacollection" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\datacollection" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\gwx" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\gwx" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\skydrive" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\skydrive" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\windowsupdate" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\windowsupdate" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\system\currentcontrolset\services\w32time\parameters" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\system\currentcontrolset\services\w32time\parameters" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient" -ot reg -actn setowner -ownr n:administrators >>aegis.log 2>&1
setacl.exe -on "hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient" -ot reg -actn ace -ace "n:administrators;p:full" >>aegis.log 2>&1

reg delete "hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener" /f >>aegis.log 2>&1

regedit /S aegis.reg >>aegis.log 2>&1

echo.
echo.

echo * disable remote registry ...

sc config remoteregistry start= disabled >>aegis.log 2>&1
sc stop remoteregistry >>aegis.log 2>&1

echo.
echo.

echo * disable scheduled tasks ...

schtasks /change /disable /tn "\microsoft\windows\application experience\aitagent" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\application experience\microsoft compatibility appraiser" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\application experience\programdataupdater" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\autochk\proxy" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\customer experience improvement programdp0\consolidator" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\customer experience improvement program\kernelceiptask" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\customer experience improvement program\usbceip" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\diskdiagnostic\microsoft-windows-diskdiagnosticdatacollector" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\maintenance\winsat" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\activatewindowssearch" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\configureinternettimeservice" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\dispatchrecoverytasks" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\ehdrminit" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\installplayready" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\mcupdate" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\mediacenterrecoverytask" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\objectstorerecoverytask" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\ocuractivate" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\ocurdiscovery" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\pbdadiscovery">>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\pbdadiscoveryw1" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\pbdadiscoveryw2" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\pvrrecoverytask" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\pvrscheduletask" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\registersearch" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\reindexsearchroot" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\sqlliterecoverytask" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\media center\updaterecordpath" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\pi\sqm-tasks" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\power efficiency diagnostics\analyzeSystem" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\setup\gwx\refreshgwxconfigandcontent" >>aegis.log 2>&1
schtasks /change /disable /tn "\microsoft\windows\windows error reporting\queuereporting" >>aegis.log 2>&1

echo.
echo.

echo * disable windows 10 download directory ...

setacl.exe -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:np;sacl:nc -rec cont_obj -actn setowner -ownr n:administrators >>aegis.log 2>&1
rmdir /q /s "%systemdrive%\$windows.~bt" >>aegis.log 2>&1
mkdir "%systemdrive%\$windows.~bt" >>aegis.log 2>&1
attrib +h "%systemdrive%\$windows.~bt" >>aegis.log 2>&1
setacl.exe -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:p_nc;sacl:p_nc -rec cont_obj -actn setowner -ownr n:administrators >>aegis.log 2>&1

echo.
echo.

echo * hide updates (this may take a while, be patient) ...

start /b /wait cscript.exe hide.vbs 971033 2882822 2902907 2922324 2952664 2976978 2977759 2990214 3012973 3014460 3015249 3021917 3022345 3035583 3042058 3044374 3046480 3050265 3050267 3064683 3065987 3065988 3068708 3072318 3074677 3075249 3075851 3075853 3080149 3081437 3081454 3081954 3083324 3083325 3083710 3083711 3086255 3088195 3090045 3093983 3102810 3102812 3112343 3112336 3123862 3135445 3135449 >>aegis.log 2>&1

echo.
echo.

echo * remove diagtrack ...

sc stop diagtrack >>aegis.log 2>&1
sc delete diagtrack >>aegis.log 2>&1

echo.
echo.

echo * sync time to pool.ntp.org ...

w32tm /config /syncfromflags:manual /manualpeerlist:"pool.ntp.org" /update /reliable:yes >>aegis.log 2>&1
w32tm /resync >>aegis.log 2>&1

echo.
echo.

echo * uninstall updates ...

echo.
echo  - uninstall kb971033  (https://support.microsoft.com/en-us/kb/971033)
start /w wusa /kb:971033 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb2882822 (https://support.microsoft.com/en-us/kb/2882822)
start /w wusa /kb:2882822 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb2902907 (https://support.microsoft.com/en-us/kb/2902907)
start /w wusa /kb:2902907 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb2922324 (https://support.microsoft.com/en-us/kb/2922324)
start /w wusa /kb:2922324 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb2952664 (https://support.microsoft.com/en-us/kb/2952664)
start /w wusa /kb:2952664 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb2976978 (https://support.microsoft.com/en-us/kb/2976978)
start /w wusa /kb:2976978 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb2977759 (https://support.microsoft.com/en-us/kb/2977759)
start /w wusa /kb:2977759 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb2990214 (https://support.microsoft.com/en-us/kb/2990214)
start /w wusa /kb:2990214 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3012973 (https://support.microsoft.com/en-us/kb/3012973)
start /w wusa /kb:3012973 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3014460 (https://support.microsoft.com/en-us/kb/3014460)
start /w wusa /kb:3014460 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3015249 (https://support.microsoft.com/en-us/kb/3015249)
start /w wusa /kb:3015249 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3021917 (https://support.microsoft.com/en-us/kb/3021917)
start /w wusa /kb:3021917 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3022345 (https://support.microsoft.com/en-us/kb/3022345)
start /w wusa /kb:3022345 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3035583 (https://support.microsoft.com/en-us/kb/3035583)
start /w wusa /kb:3035583 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3042058 (https://support.microsoft.com/en-us/kb/3042058)
start /w wusa /kb:3042058 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3044374 (https://support.microsoft.com/en-us/kb/3044374)
start /w wusa /kb:3044374 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3046480 (https://support.microsoft.com/en-us/kb/3046480)
start /w wusa /kb:3046480 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3050265 (https://support.microsoft.com/en-us/kb/3050265)
start /w wusa /kb:3050265 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3050267 (https://support.microsoft.com/en-us/kb/3050267)
start /w wusa /kb:3050267 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3064683 (https://support.microsoft.com/en-us/kb/3064683)
start /w wusa /kb:3064683 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3065987 (https://support.microsoft.com/en-us/kb/3065987)
start /w wusa /kb:3065987 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3065988 (https://support.microsoft.com/en-us/kb/3065988)
start /w wusa /kb:3065988 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3068708 (https://support.microsoft.com/en-us/kb/3068708)
start /w wusa /kb:3068708 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3072318 (https://support.microsoft.com/en-us/kb/3072318)
start /w wusa /kb:3072318 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3074677 (https://support.microsoft.com/en-us/kb/3074677)
start /w wusa /kb:3074677 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3075249 (https://support.microsoft.com/en-us/kb/3075249)
start /w wusa /kb:3075249 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3075851 (https://support.microsoft.com/en-us/kb/3075851)
start /w wusa /kb:3075851 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3075853 (https://support.microsoft.com/en-us/kb/3075853)
start /w wusa /kb:3075853 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3080149 (https://support.microsoft.com/en-us/kb/3080149)
start /w wusa /kb:3080149 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3081437 (https://support.microsoft.com/en-us/kb/3081437)
start /w wusa /kb:3081437 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3081454 (https://support.microsoft.com/en-us/kb/3081454)
start /w wusa /kb:3081454 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3081954 (https://support.microsoft.com/en-us/kb/3081954)
start /w wusa /kb:3081954 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3083324 (https://support.microsoft.com/en-us/kb/3083324)
start /w wusa /kb:3083324 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3083325 (https://support.microsoft.com/en-us/kb/3083325)
start /w wusa /kb:3083325 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3083710 (https://support.microsoft.com/en-us/kb/3083710)
start /w wusa /kb:3083710 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3083711 (https://support.microsoft.com/en-us/kb/3083711)
start /w wusa /kb:3083711 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3086255 (https://support.microsoft.com/en-us/kb/3086255)
start /w wusa /kb:3086255 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3088195 (https://support.microsoft.com/en-us/kb/3088195)
start /w wusa /kb:3088195 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3090045 (https://support.microsoft.com/en-us/kb/3090045)
start /w wusa /kb:3090045 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3093983 (https://support.microsoft.com/en-us/kb/3093983)
start /w wusa /kb:3093983 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3102810 (https://support.microsoft.com/en-us/kb/3102810)
start /w wusa /kb:3102810 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3102812 (https://support.microsoft.com/en-us/kb/3102812)
start /w wusa /kb:3102812 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3112343 (https://support.microsoft.com/en-us/kb/3112343)
start /w wusa /kb:3112343 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3112336 (https://support.microsoft.com/en-us/kb/3112336)
start /w wusa /kb:3112336 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3123862 (https://support.microsoft.com/en-us/kb/3123862)
start /w wusa /kb:3123862 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3135445 (https://support.microsoft.com/en-us/kb/3135445)
start /w wusa /kb:3135445 /norestart /quiet /uninstall >>aegis.log 2>&1
echo  - uninstall kb3135449 (https://support.microsoft.com/en-us/kb/3135449)
start /w wusa /kb:3135449 /norestart /quiet /uninstall >>aegis.log 2>&1

echo.
echo.

echo [ done - any key to exit ]
echo.
pause >nul