#!/bin/sh

if [ "$1" = "get" ]; then
    asusctl profile -p | grep "Active profile" | cut -d " " -f 4
elif [ "$1" = "set" ]; then
    if [ ! -z "$2" ]; then
        case "$2" in
            "Balanced") profile="Balanced"
                ;;
            "Performance") profile="Performance"
                ;;
            "Quiet") profile="Quiet"
                ;;
            *) echo "invalid option" && exit
                ;;
        esac

        asusctl profile -P $profile
    else
        echo "no option given"
    fi
fi
