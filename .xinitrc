#!/bin/sh

picom &
sxhkd &
ibus-daemon -rxRd &
~/.fehbg &

# dwmblocks &
# exec dwm
exec i3
