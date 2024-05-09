#!/bin/sh

setxkbmap -option && xmodmap $SCRIPTS/xmodmap && notify-send "Caps Ctrl Swapped"
