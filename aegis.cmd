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
   echo  - disable ie7 auto delivery
   start "title" /b /wait "%~dp0disable7.cmd" . /B >>"%~dp0aegis.log" 2>&1
   echo  - disable ie8 auto delivery
   start "title" /b /wait "%~dp0disable8.cmd" . /B >>"%~dp0aegis.log" 2>&1
   echo  - disable ie9 auto delivery
   start "title" /b /wait "%~dp0disable9.cmd" . /B >>"%~dp0aegis.log" 2>&1
   echo  - disable ie10 auto delivery
   start "title" /b /wait "%~dp0disable10.cmd" . /B >>"%~dp0aegis.log" 2>&1
   echo  - disable ie11 auto delivery
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
   reg add hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient /f /v specialpollinterval /t reg_dword /d 14400 >>"%~dp0aegis.log" 2>&1
   sc config w32time start= auto >>"%~dp0aegis.log" 2>&1
   net start w32time >>"%~dp0aegis.log" 2>&1
   w32tm /resync >>"%~dp0aegis.log" 2>&1

   echo.
   echo.

   powershell -executionpolicy bypass -file "%~dp0uninstall.ps1"
   net stop wuauserv >>"%~dp0aegis.log" 2>&1
   net stop bits >>"%~dp0aegis.log" 2>&1
   net start bits >>"%~dp0aegis.log" 2>&1
   net start wuauserv >>"%~dp0aegis.log" 2>&1

   powershell -executionpolicy bypass -file "%~dp0hide.ps1"
   net stop wuauserv >>"%~dp0aegis.log" 2>&1
   net stop bits >>"%~dp0aegis.log" 2>&1
   net start bits >>"%~dp0aegis.log" 2>&1
   net start wuauserv >>"%~dp0aegis.log" 2>&1

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
