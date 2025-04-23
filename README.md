# livedata2

Manage the display of live USAXS data at: [https://usaxslive.xray.aps.anl.gov/](https://usaxslive.xray.aps.anl.gov/livedata.html)

Uses : https://github.com/BCDA-APS/pvWebMonitor, manual: https://bcda-aps.github.io/pvWebMonitor/overview.html

It monitors USAXS related EPICS PVs and writes files in the local WWW server directory. 
It can be started and stopped by manage.sh (for manual control) which can be added to automated startup in a cron task "...path.../manage.sh checkup > /dev/null 2>&1" . 

Graphs are created by Matilda and can be saved directly to the loacl WWW server directory or pvWebWatch will copy them if added to config.xml .


