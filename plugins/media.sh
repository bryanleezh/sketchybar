#!/bin/bash

STATE="$(echo "$INFO" | jq -r '.["Player State"] // empty')"

if [ "$STATE" = "Playing" ]; then
  TRACK="$(echo "$INFO" | jq -r '.Name // empty')"
  ARTIST="$(echo "$INFO" | jq -r '.Artist // empty')"
  if [ -n "$ARTIST" ]; then
    MEDIA="$TRACK - $ARTIST"
  else
    MEDIA="$TRACK"
  fi
  sketchybar --set "$NAME" label="$MEDIA" drawing=on
else
  sketchybar --set "$NAME" label="No Media"
fi
