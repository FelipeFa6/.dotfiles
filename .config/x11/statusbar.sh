#!/bin/sh
BIN="$HOME/bin"

BAT=$("$BIN/get-battery" 2>/dev/null) || BAT='?'
NET=$("$BIN/check-internet" 2>/dev/null) || NET='?'
DATE=$(date +'%d/%m/%Y %H:%M')

[ -n "$BAT" ] || BAT='?'
[ -n "$NET" ] || NET='?'

xsetroot -name " [$BAT] [ $DATE ] [ $NET ]"
