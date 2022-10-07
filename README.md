# Watchface installer

[![Windwos Build](https://img.shields.io/badge/Windows%20-0.0.1-blue?style=for-the-badge)]()
[![Debain Build](https://img.shields.io/badge/Linux%20-0.0.1-orange?style=for-the-badge)]()

## what is the purpose?
These scripts should make it easy to load watchfaces on a Wearos watch without having to find out the comamnd by yourself.

## Tested devices
| Watch | OS |
|--|--|
| Galaxy Watch 4 | 3.2 |
| Galaxy Watch 5 | 3.2 |

You can let me know if you have successfully tested this on another watch 

## How to use
### Prepare watch
- Go to config -> about -> tap the version umber 7 times (it will enable dev options) Now go back to config menu Go to developer options Enable adb (it will also enable the option adb over bluetooth)
- Enable ADB over Network and note the IP address
### Windwos
- Place the watchface apk in the "WATCHFACE" folder
- Start the "run.bat" and enter the Watchface name and the IP of the watch
### Linux 
- Place the watchface apk in the "WATCHFACE folder"
- Start the "run.sh" and enter the Watchface name and the IP of the watch
### INFO:
It can be that the first time you run or similar an error aufrritt because you have to confirm adb first on your clock, best you always select allow for this pc so if you want to do this more often not always have this problem if you do not get this dialog check your ip and the clock settings.
<br> <br>
With questions or Prolemen makes gladly a neune issu on 
