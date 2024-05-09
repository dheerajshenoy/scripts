#!/bin/sh

output=$(echo -e "Lock\nLogout\nShutdown\nReboot" | rofi -dmenu -no-show-icons)

case "$output" in
    "Lock") betterlockscreen -l
        ;;
    "Logout") logout
        ;;
    "Shutdown") systemctl poweroff
        ;;
    "Reboot") systemctl reboot
        ;;
esac
