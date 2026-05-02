#!/bin/bash

sketchybar --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
                background.color=$RED \
                label.color=$BAR_COLOR \
                icon.color=$BAR_COLOR \
           --subscribe volume volume_change \