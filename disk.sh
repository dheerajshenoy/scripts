#!/bin/sh

echo "$(df /dev/nvme1n1p2 -H | awk 'NR == 2 { print $5 }')"
