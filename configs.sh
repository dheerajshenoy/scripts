#!/bin/sh

configdir=$XDG_CONFIG_HOME

declare -A configs
configs+=(
[alacritty]="$configdir/alacritty/alacritty.yml"
[sxhkd]="$configdir/sxhkd/sxhkdrc"
[betterlockscreen]="$configdir/betterlockscreen/betterlockscreenrc"
[lf]="$configdir/lf/lfrc"
[zathura]="$configdir/zathura/zathurarc"
[zsh]="$configdir/zsh/.zshrc"
[nvim]="$configdir/nvim/init.lua"
[dunst]="$configdir/dunst/dunstrc"
[sioyek]="$configdir/sioyek/prefs.config"
[starship]="$configdir/starship/starship.toml"
[picom]="$configdir/picom.conf"
[awesome]="$configdir/awesome/rc.lua"
[rofi]="$configdir/rofi/config.rasi"
[qtile]="$configdir/qtile/config.py")

choice=$(printf "%s\n" "${!configs[@]}" | sort | rofi -dmenu -p "CHOOSE CONFIG" -l 10 -no-show-icons)

choice=${configs[$choice]}
[ -z "$choice" ] && exit

$TERMINAL -e nvim "$choice"
