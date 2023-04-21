#!/bin/sh
o=$(iwgetid -r)
check_ethernet=$(lspci | grep Ethernet)
if [ -z "$o" ]; then
    [ -z "$check_ethernet" ] || echo "Ethernet"
else
    echo "$o"
fi

