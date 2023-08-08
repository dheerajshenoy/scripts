#!/bin/sh

url=$(xclip -selection clipboard -o)
[ -z $url ] && notify-send "Nothing in clipboard" && exit
bn=$(basename $url)
file=/tmp/$bn

proceed() {
    echo "FILE: $file"
    zathura $file && rm -rf $file &
    notify-send "PDF Fetched" "Enjoy"
}

wget --user-agent TryToStopMeFromUsingWgetNow -o $file $url -q --show-progress 2>&1 --progress=bar:force | grep '%' && proceed || notify-send "Error in grabbing the pdf" "Check the URL" && exit
