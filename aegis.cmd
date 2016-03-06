@echo off

:begin
   echo [ begin aegis v1.16 %date% %time% ] >"%~dpn0.log" 2>&1
   echo. >>"%~dpn0.log" 2>&1
   echo.
   echo.
   echo -/- aegis v1.16 by https://voat.co/u/thepower
   echo -/- visit https://tiny.cc/aegisvoat for updates
   echo.
   echo.

   net session >nul 2>&1
   if %errorlevel% neq 0 (
      echo ! error - this script must be run as an administrator, press any key to exit ...
      goto end
   ) else (
      goto prompt
   )

:end
   echo.
   echo.
   echo. >>"%~dpn0.log" 2>&1
   echo [ end aegis v1.16 %date% %time% ] >>"%~dpn0.log" 2>&1
   echo [ done - any key to exit ]
   echo.
   pause >nul
   exit

:main
   wmic os get osarchitecture|find "64-bit" >>"%~dpn0.log" 2>&1 && set setacl=setacl-64.exe || set setacl=setacl-32.exe
   
   echo.
   echo.

   echo * block hosts ...

   start "title" /b /wait "%~dp0block.cmd" >>"%~dpn0.log" 2>&1

   echo.
   echo.

   echo * disable automatic delivery of internet explorer via windows update ...

   echo.
   echo  - disable ie7 auto delivery
   start "title" /b /wait "%~dp0disable7.cmd" . /B >>"%~dpn0.log" 2>&1
   echo  - disable ie8 auto delivery
   start "title" /b /wait "%~dp0disable8.cmd" . /B >>"%~dpn0.log" 2>&1
   echo  - disable ie9 auto delivery
   start "title" /b /wait "%~dp0disable9.cmd" . /B >>"%~dpn0.log" 2>&1
   echo  - disable ie10 auto delivery
   start "title" /b /wait "%~dp0disable10.cmd" . /B >>"%~dpn0.log" 2>&1
   echo  - disable ie11 auto delivery
   start "title" /b /wait "%~dp0disable11.cmd" . /B >>"%~dpn0.log" 2>&1

   echo.
   echo.

   echo * disable ceip/gwx/skydrive/spynet/telemetry/wifisense ...

   taskkill /f /im gwx.exe /t >>"%~dpn0.log" 2>&1
   taskkill /f /im gwxux.exe /t >>"%~dpn0.log" 2>&1

   "%~dp0%setacl%" -on "hkey_current_user\software\policies\microsoft\office\15.0\osm" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_current_user\software\policies\microsoft\office\15.0\osm" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_current_user\software\policies\microsoft\office\16.0\osm" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_current_user\software\policies\microsoft\office\16.0\osm" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\microsoft\windows defender\spynet" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\microsoft\windows defender\spynet" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\policies\microsoft\sqmclient\windows" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\policies\microsoft\sqmclient\windows" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\policies\microsoft\windows\datacollection" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\policies\microsoft\windows\datacollection" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\policies\microsoft\windows\gwx" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\policies\microsoft\windows\gwx" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\policies\microsoft\windows\skydrive" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\policies\microsoft\windows\skydrive" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\policies\microsoft\windows\windowsupdate" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\software\policies\microsoft\windows\windowsupdate" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\system\currentcontrolset\services\w32time\parameters" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\system\currentcontrolset\services\w32time\parameters" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1

   reg delete "hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener" /f >>"%~dpn0.log" 2>&1

   regedit /S "%~dp0aegis.reg" >>"%~dpn0.log" 2>&1

   echo.
   echo.

   echo * disable remote registry ...

   sc config remoteregistry start= disabled >>"%~dpn0.log" 2>&1
   sc stop remoteregistry >>"%~dpn0.log" 2>&1

   echo.
   echo.

   echo * disable scheduled tasks ...

   schtasks /change /disable /tn "\microsoft\windows\application experience\aitagent" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\application experience\microsoft compatibility appraiser" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\application experience\programdataupdater" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\autochk\proxy" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\customer experience improvement program\consolidator" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\customer experience improvement program\kernelceiptask" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\customer experience improvement program\usbceip" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\diskdiagnostic\microsoft-windows-diskdiagnosticdatacollector" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\maintenance\winsat" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\activatewindowssearch" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\configureinternettimeservice" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\dispatchrecoverytasks" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\ehdrminit" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\installplayready" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\mcupdate" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\mediacenterrecoverytask" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\objectstorerecoverytask" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\ocuractivate" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\ocurdiscovery" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\pbdadiscovery">>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\pbdadiscoveryw1" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\pbdadiscoveryw2" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\pvrrecoverytask" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\pvrscheduletask" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\registersearch" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\reindexsearchroot" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\sqlliterecoverytask" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\media center\updaterecordpath" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\pi\sqm-tasks" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\power efficiency diagnostics\analyzeSystem" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\setup\gwx\refreshgwxconfigandcontent" >>"%~dpn0.log" 2>&1
   schtasks /change /disable /tn "\microsoft\windows\windows error reporting\queuereporting" >>"%~dpn0.log" 2>&1

   echo.
   echo.

   echo * disable windows 10 download directory ...

   "%~dp0%setacl%" -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:np;sacl:nc -rec cont_obj -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   rmdir /q /s "%systemdrive%\$windows.~bt" >>"%~dpn0.log" 2>&1
   mkdir "%systemdrive%\$windows.~bt" >>"%~dpn0.log" 2>&1
   attrib +h "%systemdrive%\$windows.~bt" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:p_nc;sacl:p_nc -rec cont_obj -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1

   echo.
   echo.

   echo * remove diagtrack ...

   sc stop diagtrack >>"%~dpn0.log" 2>&1
   sc delete diagtrack >>"%~dpn0.log" 2>&1

   echo.
   echo.

   echo * sync time to pool.ntp.org ...

   net stop w32time >>"%~dpn0.log" 2>&1
   w32tm /unregister >>"%~dpn0.log" 2>&1
   w32tm /unregister >>"%~dpn0.log" 2>&1
   reg delete hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers /f >>"%~dpn0.log" 2>&1
   reg delete hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient /f /v specialpolltimeremaining >>"%~dpn0.log" 2>&1
   w32tm /register >>"%~dpn0.log" 2>&1
   w32tm /config /syncfromflags:manual /manualpeerlist:"0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org" >>"%~dpn0.log" 2>&1
   reg add hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers /f /t reg_sz /d 0 >>"%~dpn0.log" 2>&1
   reg add hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers /f /v 0 /t reg_sz /d 0.pool.ntp.org >>"%~dpn0.log" 2>&1
   reg add hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers /f /v 1 /t reg_sz /d 1.pool.ntp.org >>"%~dpn0.log" 2>&1
   reg add hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers /f /v 2 /t reg_sz /d 2.pool.ntp.org >>"%~dpn0.log" 2>&1
   reg add hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers /f /v 3 /t reg_sz /d 3.pool.ntp.org >>"%~dpn0.log" 2>&1
   reg add hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient /f /v specialpollinterval /t reg_dword /d 14400 >>"%~dpn0.log" 2>&1
   sc config w32time start= auto >>"%~dpn0.log" 2>&1
   net start w32time >>"%~dpn0.log" 2>&1
   w32tm /resync >>"%~dpn0.log" 2>&1

   echo.
   echo.

   powershell -executionpolicy bypass -file "%~dp0uninstall.ps1"
   net stop wuauserv >>"%~dpn0.log" 2>&1
   net stop bits >>"%~dpn0.log" 2>&1
   net start bits >>"%~dpn0.log" 2>&1
   net start wuauserv >>"%~dpn0.log" 2>&1

   powershell -executionpolicy bypass -file "%~dp0hide.ps1"
   net stop wuauserv >>"%~dpn0.log" 2>&1
   net stop bits >>"%~dpn0.log" 2>&1
   net start bits >>"%~dpn0.log" 2>&1
   net start wuauserv >>"%~dpn0.log" 2>&1

   goto end

:prompt
   set /p yesno="* create system restore point? (y/n):  "
   if /i "%yesno:~,1%" equ "y" goto rpoint
   if /i "%yesno:~,1%" equ "n" goto main
   echo.
   goto prompt

:rpoint
   wmic.exe /namespace:\\root\default path systemrestore call createrestorepoint "aegis v1.16", 100, 12 >>"%~dpn0.log" 2>&1
   if %errorlevel% == 0 goto main
   echo.
   set /p yesno=" ! error - failed to create system restore point. continue? (y/n):  "
   if /i "%yesno:~,1%" equ "y" goto main
   if /i "%yesno:~,1%" equ "n" goto end
