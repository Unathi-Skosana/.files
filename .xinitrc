#!/bin/sh
compton -b &
xrdb -merge "$HOME/.Xresources"
checkredshift.sh &
urxvtd -q -f &
mpd &
launchbar &
rfkill block all
wal -i "$(< "${HOME}/.cache/wal/wal")"
