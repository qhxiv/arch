#!/bin/sh

picom &
sxhkd &
dwmblocks &
ibus-daemon -rxRd &
bluetoothctl power off
~/.fehbg &
exec dwm
