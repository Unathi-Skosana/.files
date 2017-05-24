#!/bin/sh
compton -b &
xrdb -merge "$HOME/.Xresources"
checkredshift.sh &
urxvtd -q -f &
mpd &
launchbar &
feh --bg-fill ~/Pictures/JwljAry.png
rfkill block all
