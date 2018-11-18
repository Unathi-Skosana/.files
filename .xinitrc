#!/bin/sh
#
# xinitrc
feh --bg-fill ~/Pictures/YJnm0yD.jpg


# start daemons
urxvtd -q -o -f
sxhkd &

# rice
xrdb -merge ~/.Xresources

# etc
polybar -r top &
compton --config $HOME/.config/compton.conf -b &
dunst -config ~/.config/dunst/dunstrc &
