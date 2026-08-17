#!/usr/bin/env bash

# Get the name of the currently active Wi-Fi connection
active_conn=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)

if [[ "$active_conn" == "No Internet" ]]; then
    nmcli con up "AMRITA-Connect"
    notify-send "📶 Switched to Campus Wi-Fi" "Connected to AMRITA-Connect"
elif [[ "$active_conn" == "AMRITA-Connect" ]]; then
    nmcli con up "No Internet"
    notify-send "📡 Switched to Hotspot" "Connected to No Internet"
else
    # If not connected to either, connect to one (fallback to Hotspot)
    nmcli con up "No Internet"
    notify-send "📡 Fallback Connection" "Switched to No Internet"
fi
