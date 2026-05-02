#!/bin/bash

separator_right=(
	icon=▶
	icon.font="SF Pro:Regular:16.0"
	background.padding_left=10
	background.padding_right=10
	label.drawing=off
	click_script='sketchybar --trigger toggle_stats'
	icon.color="$TEXT"
)

sketchybar --add item separator_right right \
	--set separator_right "${separator_right[@]}"