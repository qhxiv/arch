#!/bin/sh

picom &
sxhkd &
dwmblocks &
ibus-daemon -rxRd &
exec dwm
