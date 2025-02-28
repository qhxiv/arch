#!/bin/sh

picom &
sxhkd &
ibus-daemon -rxRd &
~/.fehbg &
unclutter &

# exec i3
exec $HOME/.local/bin/dwm/startdwm
