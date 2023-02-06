#!/bin/sh
res=$(man --apropos . | rofi -dmenu -l 20 | awk '{print $1}')
[ -z "$res" ] && exit
man -t $res | zathura /tmp/"$res".pdf
#man --troff-device=pdf $res > /tmp/"$res".pdf | zathura /tmp/"$res".pdf
