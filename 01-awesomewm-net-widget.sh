#!/usr/bin/env bash

interface=$1
state=$2

if [[ "$interface" != "wlp3s0" ]] && [[ "$interface" != "enp2s0" ]]; then
    exit
fi

USER=neo

/bin/su $USER -c "/home/neo/Gits/scripts/awesome-internet-widget-signal.sh $state"
