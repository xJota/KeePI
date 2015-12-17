#!/bin/bash

base="/var/www/html/live/"
echo "$?"
cd $base
rm -rf $base/segments/stream.m3u8 $base/segments/*.ts

/usr/bin/raspivid -n -w 720 -h 405 -fps 25 -t 86400000 -b 1800000 -ih -o - \
| /usr/local/bin/ffmpeg -y \
    -i - \
    -c:v copy \
    -map 0:0 \
    -f ssegment \
    -segment_time 4 \
    -segment_format mpegts \
    -segment_list "$base/segments/stream.m3u8" \
    -segment_list_size 720 \
    -segment_list_flags live \
    -segment_list_type m3u8 \
    "segments/%08d.ts"

echo "$?"


trap "rm -rf $base/segments/stream.m3u8 $base/segments/*.ts" EXIT
echo "$?"

# vim:ts=2:sw=2:sts=2:et:ft=sh
