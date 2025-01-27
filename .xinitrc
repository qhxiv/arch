#!/bin/sh

picom &
sxhkd &
ibus-daemon -rxRd &
~/.fehbg &

case $1 in
2)
  exec i3
  ;;
*)
  dwmblocks &
  exec dwm
  ;;
esac
