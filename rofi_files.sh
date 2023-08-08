#!/bin/sh

cmd="notify-send {cmd}"
file="$(find ~ | rofi -p "search or create file:" -dmenu -show drun -i -no-show-icons)"

if [ -d $file ]; then
    pcmanfm $file
else
    nvim-qt $file
fi
