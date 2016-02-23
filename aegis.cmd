@echo off

echo [ begin aegis v1.14 %date% %time% ] >"%~dp0aegis.log" 2>&1
echo. >>"%~dp0aegis.log" 2>&1
echo.
echo.
echo -/- aegis v1.14 by https://voat.co/u/thepower
echo -/- visit https://tiny.cc/aegisvoat for updates
echo.
echo.

:prompt
   set /p yesno=* create system restore point? (y/n):  
   if /i "%yesno:~,1%" equ "y" goto rpoint
   if /i "%yesno:~,1%" equ "n" goto main
   echo.
   goto prompt

:main
   echo.
   echo.

   echo * block hosts ...

   start "title" /b /wait "%~dp0block.cmd" >>"%~dp0aegis.log" 2>&1

   echo.
   echo.

   echo * disable automatic delivery of internet explorer via windows update ...

   echo.
   echo  - disable ie7  auto delivery (https://www.microsoft.com/en-us/download/details.aspx?id=13428)
   start "title" /b /wait "%~dp0disable7.cmd" . /B >>"%~dp0aegis.log" 2>&1
   echo  - disable ie8  auto delivery (https://www.microsoft.com/en-us/download/details.aspx?id=14149)
   start "title" /b /wait "%~dp0disable8.cmd" . /B >>"%~dp0aegis.log" 2>&1
   echo  - disable ie9  auto delivery (https://www.microsoft.com/en-us/download/details.aspx?id=179)
   start "title" /b /wait "%~dp0disable9.cmd" . /B >>"%~dp0aegis.log" 2>&1
   echo  - disable ie10 auto delivery (https://www.microsoft.com/en-us/download/details.aspx?id=36512)
   start "title" /b /wait "%~dp0disable10.cmd" . /B >>"%~dp0aegis.log" 2>&1
   echo  - disable ie11 auto delivery (https://www.microsoft.com/en-us/download/details.aspx?id=40722)
   start "title" /b /wait "%~dp0disable11.cmd" . /B >>"%~dp0aegis.log" 2>&1

   echo.
   echo.

   echo * disable ceip/gwx/skydrive/spynet/telemetry/wifisense ...

   taskkill /f /im gwx.exe /t >>"%~dp0aegis.log" 2>&1

   "%~dp0setacl.exe" -on "hkey_current_user\software\policies\microsoft\office\15.0\osm" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_current_user\software\policies\microsoft\office\15.0\osm" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_current_user\software\policies\microsoft\office\16.0\osm" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_current_user\software\policies\microsoft\office\16.0\osm" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\windows defender\spynet" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\microsoft\windows defender\spynet" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\sqmclient\windows" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\sqmclient\windows" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\datacollection" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\datacollection" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\gwx" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\gwx" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\skydrive" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\skydrive" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\windowsupdate" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\software\policies\microsoft\windows\windowsupdate" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\system\currentcontrolset\services\w32time\parameters" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\system\currentcontrolset\services\w32time\parameters" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient" -ot reg -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dp0aegis.log" 2>&1

   reg delete "hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener" /f >>"%~dp0aegis.log" 2>&1

   regedit /S "%~dp0aegis.reg" >>"%~dp0aegis.log" 2>&1

   echo.
   echo.

   echo * disable remote registry ...

   sc config remoteregistry start= disabled >>"%~dp0aegis.log" 2>&1
   sc stop remoteregistry >>"%~dp0aegis.log" 2>&1

   echo.
   echo.

   echo * disable scheduled tasks ...

   schtasks /change /disable /tn "\microsoft\windows\application experience\aitagent" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\application experience\microsoft compatibility appraiser" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\application experience\programdataupdater" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\autochk\proxy" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\customer experience improvement program\consolidator" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\customer experience improvement program\kernelceiptask" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\customer experience improvement program\usbceip" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\diskdiagnostic\microsoft-windows-diskdiagnosticdatacollector" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\maintenance\winsat" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\activatewindowssearch" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\configureinternettimeservice" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\dispatchrecoverytasks" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\ehdrminit" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\installplayready" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\mcupdate" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\mediacenterrecoverytask" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\objectstorerecoverytask" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\ocuractivate" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\ocurdiscovery" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\pbdadiscovery">>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\pbdadiscoveryw1" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\pbdadiscoveryw2" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\pvrrecoverytask" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\pvrscheduletask" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\registersearch" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\reindexsearchroot" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\sqlliterecoverytask" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\updaterecordpath" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\pi\sqm-tasks" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\power efficiency diagnostics\analyzeSystem" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\setup\gwx\refreshgwxconfigandcontent" >>"%~dp0aegis.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\windows error reporting\queuereporting" >>"%~dp0aegis.log" 2>&1

   echo.
   echo.

   echo * disable windows 10 download directory ...

   "%~dp0setacl.exe" -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:np;sacl:nc -rec cont_obj -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1
   rmdir /q /s "%systemdrive%\$windows.~bt" >>"%~dp0aegis.log" 2>&1
   mkdir "%systemdrive%\$windows.~bt" >>"%~dp0aegis.log" 2>&1
   attrib +h "%systemdrive%\$windows.~bt" >>"%~dp0aegis.log" 2>&1
   "%~dp0setacl.exe" -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:p_nc;sacl:p_nc -rec cont_obj -actn setowner -ownr n:administrators >>"%~dp0aegis.log" 2>&1

   echo.
   echo.

   echo * remove diagtrack ...

   sc stop diagtrack >>"%~dp0aegis.log" 2>&1
   sc delete diagtrack >>"%~dp0aegis.log" 2>&1

   echo.
   echo.

   echo * sync time to pool.ntp.org ...

   net stop w32time >>"%~dp0aegis.log" 2>&1
   w32tm /unregister >>"%~dp0aegis.log" 2>&1
   w32tm /unregister >>"%~dp0aegis.log" 2>&1
   reg delete hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers /f >>"%~dp0aegis.log" 2>&1
   reg delete hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient /f /v specialpolltimeremaining >>"%~dp0aegis.log" 2>&1
   w32tm /register >>"%~dp0aegis.log" 2>&1
   w32tm /config /syncfromflags:manual /manualpeerlist:"0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org" >>"%~dp0aegis.log" 2>&1
   reg add hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers /f /t reg_sz /d 0 >>"%~dp0aegis.log" 2>&1
   reg add hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers /f /v 0 /t reg_sz /d 0.pool.ntp.org >>"%~dp0aegis.log" 2>&1
   reg add hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers /f /v 1 /t reg_sz /d 1.pool.ntp.org >>"%~dp0aegis.log" 2>&1
   reg add hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers /f /v 2 /t reg_sz /d 2.pool.ntp.org >>"%~dp0aegis.log" 2>&1
   reg add hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers /f /v 3 /t reg_sz /d 3.pool.ntp.org >>"%~dp0aegis.log" 2>&1
   reg add hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient /f /v specialpollinterval /t reg_dword /d 00003840 >>"%~dp0aegis.log" 2>&1
   sc config w32time start= auto >>"%~dp0aegis.log" 2>&1
   net start w32time >>"%~dp0aegis.log" 2>&1
   w32tm /resync >>"%~dp0aegis.log" 2>&1

   echo.
   echo.

   echo * uninstall updates ...

   echo.
   echo  - uninstall kb971033  (https://support.microsoft.com/en-us/kb/971033)
   start /w wusa /kb:971033 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb2882822 (https://support.microsoft.com/en-us/kb/2882822)
   start /w wusa /kb:2882822 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb2902907 (https://support.microsoft.com/en-us/kb/2902907)
   start /w wusa /kb:2902907 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb2922324 (https://support.microsoft.com/en-us/kb/2922324)
   start /w wusa /kb:2922324 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb2952664 (https://support.microsoft.com/en-us/kb/2952664)
   start /w wusa /kb:2952664 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb2976978 (https://support.microsoft.com/en-us/kb/2976978)
   start /w wusa /kb:2976978 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb2977759 (https://support.microsoft.com/en-us/kb/2977759)
   start /w wusa /kb:2977759 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb2990214 (https://support.microsoft.com/en-us/kb/2990214)
   start /w wusa /kb:2990214 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3012973 (https://support.microsoft.com/en-us/kb/3012973)
   start /w wusa /kb:3012973 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3014460 (https://support.microsoft.com/en-us/kb/3014460)
   start /w wusa /kb:3014460 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3015249 (https://support.microsoft.com/en-us/kb/3015249)
   start /w wusa /kb:3015249 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3021917 (https://support.microsoft.com/en-us/kb/3021917)
   start /w wusa /kb:3021917 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3022345 (https://support.microsoft.com/en-us/kb/3022345)
   start /w wusa /kb:3022345 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3035583 (https://support.microsoft.com/en-us/kb/3035583)
   start /w wusa /kb:3035583 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3042058 (https://support.microsoft.com/en-us/kb/3042058)
   start /w wusa /kb:3042058 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3044374 (https://support.microsoft.com/en-us/kb/3044374)
   start /w wusa /kb:3044374 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3046480 (https://support.microsoft.com/en-us/kb/3046480)
   start /w wusa /kb:3046480 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3050265 (https://support.microsoft.com/en-us/kb/3050265)
   start /w wusa /kb:3050265 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3050267 (https://support.microsoft.com/en-us/kb/3050267)
   start /w wusa /kb:3050267 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3064683 (https://support.microsoft.com/en-us/kb/3064683)
   start /w wusa /kb:3064683 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3065987 (https://support.microsoft.com/en-us/kb/3065987)
   start /w wusa /kb:3065987 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3065988 (https://support.microsoft.com/en-us/kb/3065988)
   start /w wusa /kb:3065988 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3068708 (https://support.microsoft.com/en-us/kb/3068708)
   start /w wusa /kb:3068708 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3072318 (https://support.microsoft.com/en-us/kb/3072318)
   start /w wusa /kb:3072318 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3074677 (https://support.microsoft.com/en-us/kb/3074677)
   start /w wusa /kb:3074677 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3075249 (https://support.microsoft.com/en-us/kb/3075249)
   start /w wusa /kb:3075249 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3075851 (https://support.microsoft.com/en-us/kb/3075851)
   start /w wusa /kb:3075851 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3075853 (https://support.microsoft.com/en-us/kb/3075853)
   start /w wusa /kb:3075853 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3080149 (https://support.microsoft.com/en-us/kb/3080149)
   start /w wusa /kb:3080149 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3081437 (https://support.microsoft.com/en-us/kb/3081437)
   start /w wusa /kb:3081437 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3081454 (https://support.microsoft.com/en-us/kb/3081454)
   start /w wusa /kb:3081454 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3081954 (https://support.microsoft.com/en-us/kb/3081954)
   start /w wusa /kb:3081954 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3083324 (https://support.microsoft.com/en-us/kb/3083324)
   start /w wusa /kb:3083324 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3083325 (https://support.microsoft.com/en-us/kb/3083325)
   start /w wusa /kb:3083325 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3083710 (https://support.microsoft.com/en-us/kb/3083710)
   start /w wusa /kb:3083710 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3083711 (https://support.microsoft.com/en-us/kb/3083711)
   start /w wusa /kb:3083711 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3086255 (https://support.microsoft.com/en-us/kb/3086255)
   start /w wusa /kb:3086255 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3088195 (https://support.microsoft.com/en-us/kb/3088195)
   start /w wusa /kb:3088195 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3090045 (https://support.microsoft.com/en-us/kb/3090045)
   start /w wusa /kb:3090045 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3093983 (https://support.microsoft.com/en-us/kb/3093983)
   start /w wusa /kb:3093983 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3102810 (https://support.microsoft.com/en-us/kb/3102810)
   start /w wusa /kb:3102810 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3102812 (https://support.microsoft.com/en-us/kb/3102812)
   start /w wusa /kb:3102812 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3112343 (https://support.microsoft.com/en-us/kb/3112343)
   start /w wusa /kb:3112343 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3112336 (https://support.microsoft.com/en-us/kb/3112336)
   start /w wusa /kb:3112336 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3123862 (https://support.microsoft.com/en-us/kb/3123862)
   start /w wusa /kb:3123862 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3135445 (https://support.microsoft.com/en-us/kb/3135445)
   start /w wusa /kb:3135445 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1
   echo  - uninstall kb3135449 (https://support.microsoft.com/en-us/kb/3135449)
   start /w wusa /kb:3135449 /norestart /quiet /uninstall >>"%~dp0aegis.log" 2>&1

   echo.
   echo.

   echo * hide updates (this may take a while, be patient) ...

   start "title" /b /wait cscript.exe "%~dp0hide.vbs" 971033 2882822 2902907 2922324 2952664 2976978 2977759 2990214 3012973 3014460 3015249 3021917 3022345 3035583 3042058 3044374 3046480 3050265 3050267 3064683 3065987 3065988 3068708 3072318 3074677 3075249 3075851 3075853 3080149 3081437 3081454 3081954 3083324 3083325 3083710 3083711 3086255 3088195 3090045 3093983 3102810 3102812 3112343 3112336 3123862 3135445 3135449 >>"%~dp0aegis.log" 2>&1

   echo.
   echo.

   echo. >>"%~dp0aegis.log" 2>&1
   echo [ end aegis v1.14 %date% %time% ] >>"%~dp0aegis.log" 2>&1
   echo [ done - any key to exit ]
   echo.
   pause >nul
   exit

:rpoint
   wmic.exe /namespace:\\root\default path systemrestore call createrestorepoint "aegis v1.14", 100, 12 >>"%~dp0aegis.log" 2>&1
   if %errorlevel% == 0 goto main
   echo.
   set /p yesno=" failed to create system restore point. continue? (y/n):  "
   if /i "%yesno:~,1%" equ "y" goto main
   if /i "%yesno:~,1%" equ "n" (
      echo.
      echo [ done - any key to exit ]
      echo.
      pause >nul
      exit
   )

goto prompt
