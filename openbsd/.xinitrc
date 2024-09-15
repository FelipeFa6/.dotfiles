#!/bin/sh

xwallpaper --stretch $HOME/.local/share/wallpapers/monochrome.jpg

while true; do
	BATTERY=$(apm -l)
	DATE=$(date)

	xsetroot -name " [ ${BATTERY} % ] [ ${DATE} ] "
	sleep 1
done &

xbanish &

exec dwm

