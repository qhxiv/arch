#!/bin/sh

picom &
sxhkd &
ibus-daemon -rxRd &
unclutter &
~/.fehbg &

case "$1" in
2)
  exec i3
  ;;
3)
  exec startxfce4
  ;;
*)
  exec $HOME/.local/bin/dwm/startdwm
  ;;
esac
