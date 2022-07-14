#!/bin/bash
/usr/bin/xset -dpms
/usr/bin/xset s 0 0
/usr/bin/xset s noblank
/usr/bin/xrandr --output VGA-0 --mode 640x480 --pos 0x0 --rotate normal --output LVDS-0 --mode 1600x900 --pos 640x0 --rotate normal
/usr/bin/pd rTest.pd &
sleep 5
/usr/bin/devilspie &
sleep 5
kill `ps aux | grep devilspie | awk {'print $2;'} | head -n 1`
