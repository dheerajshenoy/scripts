#!/bin/sh

battery_name=BAT1
status=$(cat /sys/class/power_supply/$battery_name/status)
perc=$(cat /sys/class/power_supply/$battery_name/capacity)

echo "$perc% $status"
