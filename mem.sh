#!/bin/sh
a=$(free -m | awk 'NR == 2''{printf("%2.2f"), $3/$2*100}')
echo "$a"
