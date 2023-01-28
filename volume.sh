#!/bin/sh
awk -F"[][]" '/Mono:/ { print $2, $6 }' <(amixer sget Master)
