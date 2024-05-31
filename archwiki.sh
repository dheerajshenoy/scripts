#!/bin/sh

aw=$(find /usr/share/doc/arch-wiki/html/en -iname "*.html" -exec basename {} \; | cut -d . -f 1)

echo "$aw" | dmenu
