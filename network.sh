#!/bin/sh
ssid=$(iwgetid -r)
[ ! -z "$ssid" ] && echo "$ssid"
