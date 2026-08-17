#!/usr/bin/env bash

# Get the name of the internal display (e.g., eDP-1, eDP-2)
display=$(xrandr | grep " connected" | grep -Eo 'eDP-[0-9]+')

# Get the current rotation
current_rotation=$(xrandr --query --verbose | grep -A5 "$display" | grep -oE "normal|left|right|inverted" | head -n1)

# Cycle through rotations
case "$current_rotation" in
  normal)
    next_rotation="left"
    ;;
  left)
    next_rotation="right"
    ;;
  right)
    next_rotation="normal"
    ;;
  *)
    next_rotation="normal"
    ;;
esac

# Apply the new rotation
xrandr --output "$display" --rotate "$next_rotation"

# Notify (optional)
notify-send "Screen rotated to $next_rotation"

