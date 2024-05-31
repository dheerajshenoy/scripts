#!/bin/sh

export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"
if [[ "$1" == "up" ]]; then
    echo "require('custom.widgets').net_update()" | awesome-client
else if [[ "$1" == "down" ]]; then
    echo "require('custom.widgets').net_clear()" | awesome-client
fi
fi

