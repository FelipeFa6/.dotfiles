#!/bin/sh

#date
DATE=$(date)

#battery
BATT_PATH="/sys/class/power_supply/BAT0"
BATT_STATUS="$(cat $BATT_PATH/status)"
BATT_CAPACITY="$(cat $BATT_PATH/capacity)"


xsetroot -name " [$BATT_STATUS $BATT_CAPACITY %] [ ${DATE} ] "
