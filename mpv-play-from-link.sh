#!/bin/sh

mpv $(xsel -ob) --loop --cache 2> /dev/null || notify-send "Link doesn't work"

