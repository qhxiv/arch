#!/bin/sh

picom &
sxhkd &
ibus-daemon -rxRd &
~/.fehbg &

exec i3
