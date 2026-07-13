#!/bin/bash
SELECTED=$(~/.local/bin/wallpaper-select.sh)
[ -z "$SELECTED" ] && exit 1
pkill -x swaybg 2>/dev/null
swaybg -i "$SELECTED" -m fill &
echo "$SELECTED" > /tmp/current-wallpaper
