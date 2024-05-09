#!/bin/sh

SEMDIR="$HOME/Documents/Sem IV"

menuItems="Astro Syllabus
Time Table"

function syllabus_menu()
{
    xdg-open "$SEMDIR/Astrophysics/Syllabus.pdf"
}

output=$(echo "$menuItems" | rofi -show drun -dmenu -no-show-icons)

case "$output" in
    "Astro Syllabus")
        syllabus_menu
        ;;
    "Time Table")
        xdg-open "$SEMDIR/Time Table.pdf"
        ;;
esac

