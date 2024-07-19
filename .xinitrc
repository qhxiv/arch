#!/bin/sh

sxhkd &
~/.fehbg &
dwmblocks &
ibus-daemon -rxRd &
exec dwm
