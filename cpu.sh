#!/bin/sh
cpu=$(cat <(grep 'cpu ' /proc/stat) <(sleep 1 && grep 'cpu ' /proc/stat) | awk -v RS="" '{printf "%.1f%",($13-$2+$15-$4)*100/($13-$2+$15-$4+$16-$5)}')
echo " CPU: $cpu "
