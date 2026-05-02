#!/bin/bash

sketchybar --add item media right \
           --set media label.color=$BAR_COLOR \
                       label.max_chars=20 \
                       scroll_texts=on \
                       icon=􀑪             \
                       icon.color=$BAR_COLOR   \
                       background.color=$ROSEWATER \
                       script="$PLUGIN_DIR/media.sh" \
           --subscribe media media_change