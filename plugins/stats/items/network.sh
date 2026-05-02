#!/bin/bash

source "$HOME/.config/sketchybar/icons.sh"
source "$HOME/.config/sketchybar/colors.sh"

network_down=(
	y_offset=-7
	label.font="SF Pro:Heavy:10"
	label.color="$TEXT"
	icon="$NETWORK_DOWN"
	icon.font="SF Pro:Bold:16.0"
	icon.color="$GREEN"
	icon.highlight_color="$BLUE"
	update_freq=1
)

network_up=(
	background.padding_right=-70
	y_offset=7
	label.font="SF Pro:Heavy:10"
	label.color="$TEXT"
	icon="$NETWORK_UP"
	icon.font="SF Pro:Bold:16.0"
	icon.color="$GREEN"
	icon.highlight_color="$BLUE"
	update_freq=1
	script="$PLUGIN_DIR/stats/scripts/network.sh"
)

sketchybar 	--add item network.down right 						\
			--set network.down "${network_down[@]}" 	\
			--add item network.up right 							\
			--set network.up "${network_up[@]}"