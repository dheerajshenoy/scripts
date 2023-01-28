#!/bin/sh

echo "$(df /dev/sda4 -H | awk 'NR == 2 { print $5 }')"
