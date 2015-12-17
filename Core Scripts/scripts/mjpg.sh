#!/bin/bash
/usr/bin/raspistill --nopreview -w 1280 -h 720 -q 75 -o /home/pi/SCM/stream/pic.jpg -tl 10 -t 9999999 -th 0:0:0 > /dev/null 2>&1 &
LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/mjpg_streamer -i "input_file.so -f /home/pi/SCM/stream -n pic.jpg" -o "output_http.so -w /usr/local/www" > /dev/null 2>&1
