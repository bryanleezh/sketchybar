#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

disk=(
	background.padding_left=0
	label.font="SF Pro:Semibold:15.0"
	label.color="$TEXT"
	icon=􀧓
	icon.font="SF Pro:Semibold:15.0"
	icon.color="$GREEN"
	update_freq=60
	script="$PLUGIN_DIR/stats/scripts/disk.sh"
)

sketchybar --add item disk right \
	--set disk "${disk[@]}"