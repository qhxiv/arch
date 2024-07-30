#!/bin/sh

picom &
sxhkd &
dwmblocks &
ibus-daemon -rxRd &
nitrogen --restore &
exec dwm
