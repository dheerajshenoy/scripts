#!/bin/sh

PAPERS_DIR="$HOME/Documents/Project/Papers/"

SELECTION=$(ls ${PAPERS_DIR} | rofi -dmenu)
echo "$SELECTION"

okular "$PAPERS_DIR$SELECTION"
