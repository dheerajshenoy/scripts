#!/bin/sh

case "$1" in
    "select") maim ~/Pictures/screenshot/$(date +%s).png | xclip -selection clipboard -t image/png && notify-send "Screenshot copied to clipboard"
        ;;
    "window") maim --window $(xdotool getactivewindow) ~/Pictures/screenshot/$(date +%s).png | xclip -selection clipboard -t image/png && notify-send "Screenshot copied to clipboard"
        ;;
esac
