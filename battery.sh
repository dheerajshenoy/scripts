#!/bin/sh

status=$(cat /sys/class/power_supply/BAT0/status)
perc=$(cat /sys/class/power_supply/BAT0/capacity)

if [[ $status != "Full" ]]; then
    echo "$perc% $status"
fi
