#!/bin/sh
network=$(iwgetid -r)
if [[ $network == "" ]]; then
    echo " SSID: NOT CONNECTED "
else
    echo " SSID: $network "
fi
