#!/bin/bash

# Check if gammastep is running
if pgrep -x "gammastep" > /dev/null; then
    pkill gammastep
    echo "󰛨"  # Icon for "off"
else
    gammastep &
    echo "󰔟"  # Icon for "on"
fi

