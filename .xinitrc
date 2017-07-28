#!/bin/sh
compton -b &
xrdb -merge "$HOME/.Xresources"
checkredshift.sh &
urxvtd -q -f &
mpd &
rfkill block all
feh --bg-fill ~/Pictures/wallhaven-530971.png
