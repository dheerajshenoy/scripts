#!/bin/sh

x=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2}')
echo " MEM: $x% "
