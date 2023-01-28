#!/bin/sh

sxhkd &
~/.fehbg &

declare -a programs=( "nm-applet" "mictray" "/lib/polkit-gnome-/polkit-gnome-authentication-agent-1" "dunst -c ~/.config/dunst/dunstrc" "emacs --daemon" )

for i in "${programs[@]}"; do
    echo $i
    if ! pgrep $i; then
        $i &
    fi
done

