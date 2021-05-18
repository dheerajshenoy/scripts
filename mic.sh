#!/bin/sh
ponymix | awk -F: 'NR==6' | cut -d ":" -f 2
