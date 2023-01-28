#!/bin/sh

# COMMENT:
# Program to fuzzy search and open file using xdg-open

if [ -z "$1" ]; then
    fzf | xargs -I {} xdg-open {}
else
    fzf $1 | xargs -I {} xdg-open {}
fi
