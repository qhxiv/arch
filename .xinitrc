#!/bin/sh

picom &
sxhkd &
ibus-daemon -rxRd &
unclutter &

case "$1" in
2)
  exec i3
  ;;
*)
  exec $HOME/.local/bin/dwm/startdwm
  ;;
esac
