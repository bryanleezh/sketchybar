#!/bin/bash

sketchybar --add item calendar right \
           --set calendar icon=􀧞  \
                    background.color=$MAUVE \
                    label.color=$BAR_COLOR \
                    icon.color=$BAR_COLOR \
                    update_freq=30 \
                    script="$PLUGIN_DIR/calendar.sh"