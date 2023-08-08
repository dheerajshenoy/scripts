#!/bin/sh
res=$(man --apropos . | rofi -dmenu -no-show-icons -l 10 -p "Manpage"| awk '{print $1}')
[ -z "$res" ] && exit
man -t $res | zathura /tmp/"$res".pdf
#man --troff-device=pdf $res > /tmp/"$res".pdf | zathura /tmp/"$res".pdf
