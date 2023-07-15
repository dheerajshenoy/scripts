#!/bin/sh

run() {
    if ! pgrep -f "$1";
    then
        "$@" &
    fi
}

IFS='\n'

programs=(
)

for i in "${programs[@]}"; do
    run "$i"
done
