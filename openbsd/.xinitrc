#!/bin/sh

xwallpaper --stretch $HOME/.local/share/wallpapers/wallpaper.jpeg

while true; do
	BATTERY=$(apm -l)
	DATE=$(date)

	xsetroot -name " [ ${BATTERY} % ] [ ${DATE} ] "
	sleep 1
done &

xbanish &

exec dwm

