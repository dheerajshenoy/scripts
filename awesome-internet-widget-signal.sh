#!/bin/sh

export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"
echo "widgets.Internet.update()" | awesome-client
