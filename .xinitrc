#!/bin/sh

picom &
sxhkd &
ibus-daemon -rxRd &
~/.fehbg &
# unclutter &

case "$1" in
2)
  exec i3
  ;;
*)
  exec $HOME/.local/bin/dwm/startdwm
  ;;
esac
