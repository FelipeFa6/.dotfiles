#!/bin/sh

# Get date in DD/MM/YYYY 24hr format
DATE=$(date +"%d/%m/%Y %H:%M")

# Battery status
BATT_PATH="/sys/class/power_supply/BAT0"
BATT_STATUS="$(cat $BATT_PATH/status)"
BATT_CAPACITY="$(cat $BATT_PATH/capacity)"

# Check internet connection
check_internet() {
        ping -c 1 -W 2 1.1.1.1 >/dev/null 2>&1
}

if check_internet ; then
  CONNECTION="Online"
else
  CONNECTION="Offline"
fi

# Set the status bar
xsetroot -name " [$BATT_STATUS $BATT_CAPACITY %] [ ${DATE} ] [ ${CONNECTION} ]"

