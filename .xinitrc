#!/bin/sh

xwallpaper --center ~/Pictures/wal/eldenringblacksmith.png &
xcompmgr &
sxhkd &
unclutter &
xset r rate 300 50 # Speed xrateup
exec slstatus &
exec dwm
