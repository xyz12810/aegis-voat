@echo off

:begin
   echo [ begin aegis v1.17 %date% %time% ] >"%~dpn0.log" 2>&1
   echo. >>"%~dpn0.log" 2>&1
   echo.
   echo.
   echo -/- aegis v1.17 by https://voat.co/u/thepower
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
   echo [ end aegis v1.17 %date% %time% ] >>"%~dpn0.log" 2>&1
   echo [ done - see aegis.log for details - any key to exit ]
   echo.
   pause >nul
   exit

:main
   wmic os get osarchitecture|findstr /bi 64-bit >>"%~dpn0.log" 2>&1 && set setacl=setacl-64.exe||set setacl=setacl-32.exe
   
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

   tasklist|findstr /bi gwx.exe >nul 2>&1 && taskkill /f /im gwx.exe /t >>"%~dpn0.log" 2>&1
   tasklist|findstr /bi gwxux.exe >nul 2>&1 && taskkill /f /im gwxux.exe /t >>"%~dpn0.log" 2>&1

   set key=hkey_current_user\software\policies\microsoft\office\15.0\osm
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_current_user\software\policies\microsoft\office\15.0\osm
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_current_user\software\policies\microsoft\office\16.0\osm
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_current_user\software\policies\microsoft\office\16.0\osm
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\microsoft\windows defender\spynet
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\microsoft\windows defender\spynet
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\policies\microsoft\sqmclient\windows
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\policies\microsoft\sqmclient\windows
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\policies\microsoft\windows\datacollection
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\policies\microsoft\windows\datacollection
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\policies\microsoft\windows\gwx
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\policies\microsoft\windows\gwx
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\policies\microsoft\windows\scripteddiagnosticsprovider\policy
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\policies\microsoft\windows\skydrive
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\policies\microsoft\windows\skydrive
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\policies\microsoft\windows\windowsupdate
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\policies\microsoft\windows\windowsupdate
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\system\currentcontrolset\services\w32time\parameters
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\system\currentcontrolset\services\w32time\parameters
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient
   reg query "%key%" >nul 2>&1 && "%~dp0%setacl%" -on "%key%" -ot reg -actn ace -ace "n:administrators;p:full" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\system\currentcontrolset\control\wmi\autologger\autoLogger-diagtrack-listener
   reg query "%key%" >nul 2>&1 && reg delete "%key%" /f >>"%~dpn0.log" 2>&1
   reg import "%~dpn0.reg" >>"%~dpn0.log" 2>&1

   echo.
   echo.

   echo * disable remote registry ...

   sc query remoteregistry|findstr /i running >nul 2>&1 && net stop remoteregistry >>"%~dpn0.log" 2>&1
   sc query remoteregistry >nul 2>&1 && sc config remoteregistry start= disabled >>"%~dpn0.log" 2>&1

   echo.
   echo.

   echo * disable scheduled tasks ...

   set tn=\microsoft\windows\application experience\aitagent
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\application experience\aitagent
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\application experience\microsoft compatibility appraiser
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\application experience\programdataupdater
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\autochk\proxy
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\customer experience improvement program\consolidator
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\customer experience improvement program\kernelceiptask
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\customer experience improvement program\usbceip
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\diskdiagnostic\microsoft-windows-diskdiagnosticdatacollector
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\maintenance\winsat
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\activatewindowssearch
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\configureinternettimeservice
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\dispatchrecoverytasks
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\ehdrminit
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\installplayready
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\mcupdate
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\mediacenterrecoverytask
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\objectstorerecoverytask
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\ocuractivate
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\ocurdiscovery
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\pbdadiscovery
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\pbdadiscoveryw1
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\pbdadiscoveryw2
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\pvrrecoverytask
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\pvrscheduletask
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\registersearch
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\reindexsearchroot
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\sqlliterecoverytask
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\media center\updaterecordpath
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\pi\sqm-tasks
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\power efficiency diagnostics\analyzeSystem
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\setup\gwx\refreshgwxconfigandcontent
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1
   set tn=\microsoft\windows\windows error reporting\queuereporting
   schtasks /query /tn "%tn%" >nul 2>&1 && schtasks /change /disable /tn "%tn%" >>"%~dpn0.log" 2>&1

   echo.
   echo.

   echo * disable windows 10 download directory ...

   if exist "%systemdrive%\$windows.~bt" "%~dp0%setacl%" -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:np;sacl:nc -rec cont_obj -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1
   if exist "%systemdrive%\$windows.~bt" rmdir /q /s "%systemdrive%\$windows.~bt" >>"%~dpn0.log" 2>&1
   mkdir "%systemdrive%\$windows.~bt" >>"%~dpn0.log" 2>&1
   attrib +h "%systemdrive%\$windows.~bt" >>"%~dpn0.log" 2>&1
   "%~dp0%setacl%" -on "%systemdrive%\$windows.~bt" -ot file -actn setprot -op dacl:p_nc;sacl:p_nc -rec cont_obj -actn setowner -ownr n:administrators >>"%~dpn0.log" 2>&1

   echo.
   echo.

   echo * remove diagtrack ...

   sc query diagtrack|findstr /i running >nul 2>&1 && net stop diagtrack >>"%~dpn0.log" 2>&1
   sc query diagtrack >nul 2>&1 && sc delete diagtrack >>"%~dpn0.log" 2>&1

   echo.
   echo.

   echo * sync time to pool.ntp.org ...

   sc query w32time|findstr /i running >nul 2>&1 && net stop w32time >>"%~dpn0.log" 2>&1
   w32tm /unregister >nul 2>&1
   w32tm /unregister >nul 2>&1
   set key=hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers
   reg query "%key%" >nul 2>&1 && reg delete "%key%" /f >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient
   reg query "%key%" >nul 2>&1 && reg delete "%key%" /f /v specialpolltimeremaining >>"%~dpn0.log" 2>&1
   w32tm /register >>"%~dpn0.log" 2>&1
   w32tm /config /syncfromflags:manual /manualpeerlist:"0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org" >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\software\microsoft\windows\currentversion\datetime\servers
   reg add "%key%" /f /t reg_sz /d 0 >>"%~dpn0.log" 2>&1
   reg add "%key%" /f /v 0 /t reg_sz /d 0.pool.ntp.org >>"%~dpn0.log" 2>&1
   reg add "%key%" /f /v 1 /t reg_sz /d 1.pool.ntp.org >>"%~dpn0.log" 2>&1
   reg add "%key%" /f /v 2 /t reg_sz /d 2.pool.ntp.org >>"%~dpn0.log" 2>&1
   reg add "%key%" /f /v 3 /t reg_sz /d 3.pool.ntp.org >>"%~dpn0.log" 2>&1
   set key=hkey_local_machine\system\currentcontrolset\services\w32time\timeproviders\ntpclient
   reg add "%key%" /f /v specialpollinterval /t reg_dword /d 14400 >>"%~dpn0.log" 2>&1
   sc config w32time start= auto >>"%~dpn0.log" 2>&1
   net start w32time >>"%~dpn0.log" 2>&1
   w32tm /resync >>"%~dpn0.log" 2>&1

   echo.
   echo.

   powershell -executionpolicy bypass -file "%~dp0uninstall.ps1"
   sc query wuauserv|findstr /i running >nul 2>&1 && net stop wuauserv >>"%~dpn0.log" 2>&1
   sc query bits|findstr /i running >nul 2>&1 && net stop bits >>"%~dpn0.log" 2>&1
   net start bits >>"%~dpn0.log" 2>&1
   net start wuauserv >>"%~dpn0.log" 2>&1

   powershell -executionpolicy bypass -file "%~dp0hide.ps1"
   sc query wuauserv|findstr /i running >nul 2>&1 && net stop wuauserv >>"%~dpn0.log" 2>&1
   sc query bits|findstr /i running >nul 2>&1 && net stop bits >>"%~dpn0.log" 2>&1
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
   wmic.exe /namespace:\\root\default path systemrestore call createrestorepoint "aegis v1.17", 100, 12 >>"%~dpn0.log" 2>&1
   if %errorlevel% equ 0 goto main
   echo.
   set /p yesno=" ! error - failed to create system restore point. continue? (y/n):  "
   if /i "%yesno:~,1%" equ "y" goto main
   if /i "%yesno:~,1%" equ "n" goto end
