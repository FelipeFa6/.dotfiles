#!/bin/sh
BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)
DATE=$(date)

xsetroot -name " [ ${BATTERY} % ] [ ${DATE} ] "
