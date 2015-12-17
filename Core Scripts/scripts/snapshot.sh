#!/bin/bash
NUMINTRUDER="$(ls /var/www/html/92jFBTrivWGB3gkd828403FBJenvbwbncbvs2/ | wc -l)"
echo $NUMINTRUDER
((NUMINTRUDER+=1))
MJPGRUNNING=0
pgrep mjpg_streamer && MJPEGRUNNING=1
if [ "${MJPEGRUNNING}" == "1" ]
then
cp /home/pi/SCM/stream/pic.jpg /var/www/html/92jFBTrivWGB3gkd828403FBJenvbwbncbvs2/intruder"${NUMINTRUDER}".jpg
else
/usr/bin/raspistill -w 1280 -h 720 -q 75 -o /var/www/html/92jFBTrivWGB3gkd828403FBJenvbwbncbvs2/intruder"${NUMINTRUDER}".jpg -t 1000
fi
