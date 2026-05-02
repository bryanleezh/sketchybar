#!/bin/sh

sketchybar --add item  network.up left                               \
           --set       network.up script="$PLUGIN_DIR/network.sh"    \
                                  update_freq=20                     \
                                  background.border_width=0          \
                                  icon=⇡                             \
                                  icon.color=$BAR_COLOR                 \
                                  label.color=$BAR_COLOR                \
                                  background.color=$BLUE     \
                                                                     \
           --add item  network.down left                             \
           --set       network.down script="$PLUGIN_DIR/network.sh"  \
                               update_freq=30                        \
                               background.border_width=0             \
                               icon=⇣                                \
                               icon.color=$BAR_COLOR                     \
                               label.color=$BAR_COLOR                    \
                                background.color=$BLUE     \