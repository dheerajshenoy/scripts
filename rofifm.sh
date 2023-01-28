#!/bin/sh 
cd ~
dir=$(find | rofi -dmenu -kb-custom-1 "Alt+1" -matching fuzzy)
rofi_status=$?

if [ -z "$dir" ]; then
    exit
fi

if [ -f "$dir" ]; then
	xdg-open "$dir" &
	exit
fi
if [ "$rofi_status" -eq 10 ]; then
	alacritty --working-directory=$dir &
	exit
else
	pcmanfm $dir &
	exit
fi
