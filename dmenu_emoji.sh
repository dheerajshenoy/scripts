#!/bin/sh

chosen=$(cat ~/gits/dotfiles/emojis | rofi -dmenu | awk '{print $1}' | tr -d ' ')

[ -z "$chosen" ] && exit

printf "$chosen" | xclip -selection clipboard
notify-send "$chosen copied to clipboard"
