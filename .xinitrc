#!/bin/sh

dunst &
picom &
sxhkd &
xfsettingsd &
ibus-daemon -rxRd &
unclutter &
~/.fehbg &

case "$1" in
2)
  exec i3
  ;;
*)
  exec $HOME/.local/bin/dwm/startdwm
  ;;
esac
