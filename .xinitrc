#!/bin/sh

picom &
sxhkd &
~/.fehbg &
dwmblocks &
ibus-daemon -rxRd &
exec dwm
