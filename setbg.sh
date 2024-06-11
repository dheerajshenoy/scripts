#!/bin/sh

pic="$1"

[[ ! -z "$pic" && -f "$pic" ]] &&
    xwallpaper --zoom $pic &&
    cp $pic ~/.config/wall &&
    notify-send "Wallpaper set"

