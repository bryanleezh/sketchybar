#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

memory=(
	background.padding_left=0
	label.font="SF Pro:Semibold:15.0"
	label.color="$TEXT"
	icon=𓄅
	icon.font="SF Pro:Semibold:15.0"
	icon.color="$GREEN"
	update_freq=15
	script="$PLUGIN_DIR/stats/scripts/ram.sh"
)

sketchybar --add item memory right \
	--set memory "${memory[@]}"