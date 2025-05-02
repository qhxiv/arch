#!/bin/sh

picom &
sxhkd &
ibus-daemon -rxRd &
unclutter &
~/.fehbg &

exec $HOME/.local/bin/dwm/startdwm
