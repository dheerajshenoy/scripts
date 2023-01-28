#!/bin/sh

configdir=$XDG_CONFIG_HOME

declare -A configs
configs+=(
[alacritty]="$configdir/alacritty/alacritty.yml"
[sxhkd]="$configdir/sxhkd/sxhkdrc"
[lf]="$configdir/lf/lfrc"
[zathura]="$configdir/zathura/zathurarc"
[zsh]="$configdir/zsh/.zshrc"
[nvim]="$configdir/nvim/init.lua"
[networkmanager_dmenu]="$configdir/networkmanager_dmenu/config.ini"
[dunst]="$configdir/dunst/dunstrc"
[picom]="$configdir/picom.conf"
[neomutt]="$configdir/neomutt/neomuttrc"
[awesome]="$configdir/awesome/rc.lua")


choice=$(printf "%s\n" "${!configs[@]}" | sort | rofi -dmenu -p "CHOOSE CONFIG" -l 10)

[ -z "${configs[$choice]}" ] && exit

$TERMINAL -e $EDITOR ${configs[$choice]}
