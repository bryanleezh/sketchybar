#!/bin/sh

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

# Fetch the current SSID of the Wi-Fi connection
SSID=$(ipconfig getsummary en0 | awk -F ' SSID : '  '/ SSID : / {print $2}')
IS_VPN=$(scutil --nwi | grep -m1 'utun' | awk '{ print $1 }')

# Debugging echo for SSID
echo "SSID: $SSID"

# Determine the label and color based on VPN and Wi-Fi connection status
if [[ $IS_VPN != "" ]]; then
    COLOR=$MAUVE
    ICON=󰌾
    LABEL="VPN"
elif [[ $SSID != "" ]]; then
    COLOR=$BLUE
    ICON=󰖩
    LABEL=$SSID  # Display the Wi-Fi name instead of IP
else
    COLOR=$RED
    ICON=􀙈
    LABEL="Not Connected"
fi

# Update sketchybar with the new values
sketchybar --set $NAME background.color=$COLOR \
    icon=$ICON \
    label="$LABEL"