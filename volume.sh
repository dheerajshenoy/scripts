#!/bin/bash

volume=$(pamixer --get-volume)
statusd=$(pamixer --get-mute)
if [[ $statusd == "true" ]]; then
    echo -e "\x0cVOL:\x0f$volume \x0eMUTE"
else
    echo -e "\x0cVOL:\x0f$volume"
fi
