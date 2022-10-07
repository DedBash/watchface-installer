@echo off
cd %~dp0
set adb=adb\windows\adb.exe
if not exist %adb% echo %adb% not found. & pause
echo Start ADB Server on your Computer
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
echo Set the ADB IP of the Watch
set /P watchip="> "
%adb% connect %watchip%
%adb% -s %watchip% install WATCHFACE\%watchname%
%adb% kill-server
pause