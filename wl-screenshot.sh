#!/bin/sh

# Screenshot utility that displays option to take screenshot of screen or entire region, with copy to clipboard or save

options="Region & Save\nRegion & Copy\nScreen & Save\nScreen & Copy"


opt=$(printf "$options" | rofi -dmenu)

case "$opt"

     "Region & Save"
     grim -g "$(slurp)"
     ;;

    "Region & Copy"
    grim - "$(slurp)" | wl-copy
    ;;

    "Screen & Save"
    grim

    "Screen & Copy"
    grim - | wl-copy
     


esac