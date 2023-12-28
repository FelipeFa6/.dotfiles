#!/bin/bash

# Function to get a random file from a directory
function random_file() {
   local dir="$1"
   local file
   file=$(find "$dir" -type f -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" | shuf -n 1)
   echo "$file"
}

# Directory where wallpapers are stored for different resolutions
main_display='HDMI-1'
second_display='DVI-D-2'

# Get a random wallpaper file for each resolution
main_wallpaper=$(random_file "/mnt/st1/imgs/wallpaper/1920x1080")
second_wallpaper=$(random_file "/mnt/st1/imgs/wallpaper/1080x1920")

# Set the wallpapers using xwallpaper
xwallpaper --output "$main_display" --stretch "$main_wallpaper"
xwallpaper --output "$second_display" --stretch "$second_wallpaper"
