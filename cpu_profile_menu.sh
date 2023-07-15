#!/bin/sh

MenuItems="Balanced\nQuiet\nPerformance"

asusctl profile -P "$(echo -e $MenuItems | rofi -show drun -dmenu)"
