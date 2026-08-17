#!/usr/bin/env bash

i3status | while :
do
    read line
    spotify=$(~/.config/i3/spotify.sh)
    echo "$spotify | $line"
done