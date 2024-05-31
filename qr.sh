#!/bin/sh

str=$(xsel -ob)

[ ! -z "$str" -a "$str" != "" ] && qrencode -o /tmp/qr.png "$str" && sxiv -f /tmp/qr.png -z 500
