#!/bin/sh

[ -f ~/.Xresources ] && xrdb -merge -I$HOME ~/.Xresources

hsetroot -cover ~/.config/wall.png &
xsetroot -cursor_name left_ptr &
xset r rate 350 60 &
picom -b &
unclutter &
setxkbmap -option "caps:escape" \
          -option "altwin:menu_win" \
          -option "terminate:ctrl_alt_bksp" &

exec sowm
