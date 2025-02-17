#!/bin/sh

picom &
sxhkd &
ibus-daemon -rxRd &
~/.fehbg &

dwmblocks &
exec startdwm
