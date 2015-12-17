#!/bin/bash
ncat -e /bin/echo -l 5656 -u -k --recv-only -o motion.txt --allow 192.168.1.189 &
