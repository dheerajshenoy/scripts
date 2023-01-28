#!/bin/sh

if [ ! -z "$1" ]; then
    #cp "$1" "~/.config/$1"
    echo "$1" > ~/.config/wallpaper
    cat ~/.config/wallpaper | xargs -I {} feh --bg-fill {}
else
    cat ~/.config/wallpaper | xargs -I {} feh --bg-fill {}
fi

