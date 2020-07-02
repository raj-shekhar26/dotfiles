#!/bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
xset +fp /home/raj/.local/share/fonts
xset fp rehash
xsetroot -cursor_name left_ptr
mpd &
~/.fehbg
$HOME/.config/polybar/launch.sh &
sxhkd &
exec bspwm
