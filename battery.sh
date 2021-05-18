#!/bin/sh
charging_status=$(cat /sys/class/power_supply/BAT0/status)
if [[ $charging_status == "Charging" || $charging_status == "Discharging" ]]; then
    charge=$(cat /sys/class/power_supply/BAT0/capacity)
    if [[ $charge < 20 ]]; then
        echo "BAT:$charging_status $charge%"
    else
        echo "BAT: $charging_status $charge"
    fi
fi
