#!/bin/sh

x=$(free -m | awk 'NR==2{printf "%.2f\t\t", $3*100/$2}')
if [[ $x < 30 ]]; then
    echo -e $x
elif [[ $x < 60 ]]; then
    echo -e $x
else
    echo -e $x
fi
