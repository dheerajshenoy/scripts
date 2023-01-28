#!/bin/sh

res=$(echo -e "Yes\nNo" | rofi -dmenu -p "Do you want to shutdown ?")

if [[ "$res" == "Yes" ]]; then
    shutdown now
fi
