#/bin/bash
adb=`adb/linux/adb`
if not exist $adb
then
    echo "adb not found"
fi
$adb start-server
echo ################################
echo # Watches Installer for WearOS #
echo #     by Kiznaiver Systems     #
echo #         Version 0.1          #
echo ################################
:watchfacename
echo "Set the Watchface name with .apk"
read "> " watchfacename
if not exist WATCHFACE/$watchfacename
then
    echo "Ther is no watchface with thie filename $watchfacename in the folder WATCHFACE"
    goto watchfacename
fi
echo "Set the ADB IP of the Watch"
read "> " watchip
$adb connect $watchip
$adb -s $watchip install WATCHFACE/$watchfacename
$adb kill-server