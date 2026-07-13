#!/bin/bash
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
WALLPAPERS=(
    "$WALLPAPER_DIR/1.png"
    "$WALLPAPER_DIR/2.png"
    "$WALLPAPER_DIR/3.png"
)
RANDOM_INDEX=$((RANDOM % 3))
SELECTED="${WALLPAPERS[$RANDOM_INDEX]}"
[ ! -f "$SELECTED" ] && echo "错误" >&2 && exit 1
echo "$SELECTED"
