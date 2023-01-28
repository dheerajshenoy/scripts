#!/bin/sh
res=$(man --apropos . | rofi -dmenu -l 20 | awk '{print $1}')
[ -z "$res" ] && exit
man --troff-device=pdf $res > /tmp/"$res".pdf | sioyek /tmp/"$res".pdf
