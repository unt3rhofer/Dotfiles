#!/bin/fish

set LAST_STATE  ""
set DOCKED_STATE "/home/martin/Dotfiles/sway/config.d/scripts/docking/docked_state.info"
set CURRENT_STATE "/home/martin/Dotfiles/sway/config.d/scripts/docking/current_state.info"

lsusb > $CURRENT_STATE
cat $CURRENT_STATE

# vatroslav kaze: napravi sa systemd ... pitaj chatgpt
