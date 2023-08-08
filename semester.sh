#!/bin/sh

SEMDIR="$HOME/Documents/Sem III"

menuItems="Syllabus
Time Table"

function syllabus_menu()
{
syllabusItems="NPP
AS
PS
Astro
"
output=$(echo "$syllabusItems" | rofi -show drun -dmenu -no-show-icons)

case "$output" in 
    "NPP") xdg-open "$SEMDIR/Nuclear and Particle Physics/Syllabus.pdf"
        ;;
    "AS") xdg-open "$SEMDIR/Atomic Spectroscopy/Syllabus.pdf"

        ;;
    "PS") xdg-open "$SEMDIR/Physics of solids/Syllabus.pdf"

        ;;
    "Astro") xdg-open "$SEMDIR/Astrophysics/Syllabus.pdf"

        ;;
esac

}


output=$(echo "$menuItems" | rofi -show drun -dmenu)

case "$output" in
    "Syllabus")
        syllabus_menu
        ;;
    "Time Table")
        xdg-open "$SEMDIR/Time Table.pdf"
        ;;
esac

