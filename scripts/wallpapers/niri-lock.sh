#!/bin/bash
CURRENT_WALLPAPER=$(cat /tmp/current-wallpaper 2>/dev/null)
if [ ! -f "$CURRENT_WALLPAPER" ]; then
    CURRENT_WALLPAPER=$(~/.local/bin/wallpaper-select.sh)
fi
[ -z "$CURRENT_WALLPAPER" ] && CURRENT_WALLPAPER="$HOME/Pictures/Wallpapers/0.png"
swaylock -f -i "$CURRENT_WALLPAPER"
