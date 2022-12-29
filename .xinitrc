#!/bin/sh

xsetroot -name "$(date +"%a %b %d %H:%M")"
xwallpaper --center ~/Pictures/wal/eldenringblacksmith.png &
xcompmgr &
sxhkd &
xset r rate 300 50 # Speed xrateup
exec slstatus &
exec dwm
