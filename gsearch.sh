#!/bin/sh

url="http://www.google.com/search?q="

res=$(rofi -dmenu -p "Google search" -l 0 | sed 's/ /+/g')

[ -z "$res" ] && exit

xdg-open $url$res
