#!/bin/bash

# Check if gammastep is running
if pgrep -x "gammastep" > /dev/null; then
    pkill gammastep
    echo "󰛨"  # Icon for "off"
else
    gammastep -O 3000 &
    echo "󰔟"  # Icon for "on"
fi

