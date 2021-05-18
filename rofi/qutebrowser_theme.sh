#!/bin/sh

declare -a opts=(
    "Solarized Dark"
    "Solarized Light"
    "Gruvbox"
    "Apprentice"
    "Darculized"
    "Revert to Default"
)
css_path="~/.config/qutebrowser/solarized-everything-css/css/"
cmd="set content.user_stylesheets"

S=""
for i in "${!opts[@]}"; do
    S+="${opts[$i]}\n"
done

choice=$(echo -e $S | rofi -p "CSS Theme:" -dmenu -config ~/.config/rofi/config)

case $choice in

    "Solarized Dark")
        echo "$cmd $css_path/solarized-dark/solarized-dark-all-sites.css" >> "$QUTE_FIFO"
    ;;

    "Solarized Light")
        echo "$cmd $css_path/solarized-light/solarized-light-all-sites.css" >> "$QUTE_FIFO"

    ;;

    "Gruvbox")
        echo "$cmd $css_path/gruvbox/gruvbox-all-sites.css" >> "$QUTE_FIFO"

    ;;

    "Apprentice")
        echo "$cmd $css_path/apprentice/apprentice-all-sites.css" >> "$QUTE_FIFO"

    ;;

    "Darculized")
        echo "$cmd $css_path/darculized/darculized-all-sites.css" >> "$QUTE_FIFO"
    ;;

    "Revert to Default")
        echo "config-unset content.user_stylesheets" >> "$QUTE_FIFO"
        ;;
esac
