#!/bin/sh

a=$(rofi -dmenu -p "Search")

function func() {
    search="${@:2}"
    case "$1" in
        "g") url="https://www.google.com/search?q=$search" ; echo $url ;;
        "d") echo "DDG" ;;
        *)  ;;
    esac

}

[ -z "$a" ] && exit || func $a
