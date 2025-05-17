#!/bin/bash

LAST_STATE=""

while true; do
    MONITOR="DP-1"
    OUTPUTS=$(swaymsg -t get_outputs)
    
    if echo "$OUTPUTS" | grep -qw "$MONITOR"; then
        if [ "$LAST_STATE" != "external" ]; then
            swaymsg output "$MONITOR" pos 0 0
            swaymsg output "$MONITOR" scale 1.0
            swaymsg output "eDP-1" disable
            LAST_STATE="external"
        fi
    else
        if [ "$LAST_STATE" != "internal" ]; then
            swaymsg output "eDP-1" enable
            swaymsg output "eDP-1" pos 0 0
            swaymsg output "eDP-1" scale 1.0
            LAST_STATE="internal"
        fi
    fi

    sleep 5
done

