#!/bin/sh

picom &
sxhkd &
dwmblocks &
ibus-daemon -rxRd &
~/.fehbg &
exec dwm
