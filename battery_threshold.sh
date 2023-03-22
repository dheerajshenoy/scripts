#!/bin/sh

value="$1"

[ -z $value ] && echo "DD" && exit 0

battery_threshold_file="/sys/class/power_supply/BAT1/charge_control_end_threshold"

echo $value | sudo tee $battery_threshold_file
