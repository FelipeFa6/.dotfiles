#!/bin/bash

# Function to get a random file from a directory
function random_file() {
   local dir="$1"
   local file
   file=$(find "$dir" -type f -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" | shuf -n 1)
   echo "$file"
}

WALLPAPER_DIR="$HOME/.local/share/wallpapers/"
selected_wallpaper=$(random_file $WALLPAPER_DIR)

xwallpaper --stretch $selected_wallpaper
