#!/bin/sh

url="http://www.google.com/search?q="

res=$(rofi -dmenu -p "Google search" | sed 's/ /+/g')

[ -z "$res" ] && exit

xdg-open $url$res
