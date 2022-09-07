@echo off
cd %~dp0
set adb=adb\windows\adb.exe
if not exist %adb% echo %adb% not found. & pause
%adb% start-server
echo ################################
echo # Watches Installer for WearOS #
echo #     by Kiznaiver Systems     #
echo #         Version 0.1          #
echo ################################
:watchfacename
echo Set the Watchface name with .apk
set /P watchname="> "
if not exist WATCHFACE\%watchname% echo Ther is no watchface with thie filename %watchname% in the folder WATCHFACE & goto watchfacename
:watchfaceip
echo Set the ADB IP of the Watch
set /P watchip="> "
if %adb% connect %watchip% echo Your Watch is connectet
else echo Connecton Error try again & goto watchfaceip





pause