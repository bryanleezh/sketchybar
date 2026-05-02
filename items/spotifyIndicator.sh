#!/bin/bash

# CURRENT SPOTIFY SONG
# Adding custom events which can listen on distributed notifications from other running processes
sketchybar -m --add event spotify_change "com.spotify.client.PlaybackStateChanged" \
    --add item spotifyIndicator right \
    --set spotifyIndicator background.color=$ROSEWATER  \
    --set spotifyIndicator label.color=$BAR_COLOR \
    --set spotifyIndicator label.max_chars=20 \
    --set spotifyIndicator scroll_texts=on \
    --set spotifyIndicator script="~/.config/sketchybar/plugins/spotifyIndicator.sh" \
    --set spotifyIndicator click_script="osascript -e 'tell application \"Spotify\" to pause'" \
    --subscribe spotifyIndicator spotify_change