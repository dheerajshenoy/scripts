#!/bin/sh

chosen=$(cat ~/dotfiles/emojis | rofi -dmenu -no-show-icons | awk '{print $1}' | tr -d ' ')

[ -z "$chosen" ] && exit

printf "$chosen" | xclip -selection clipboard
notify-send "$chosen copied to clipboard"
