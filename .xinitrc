#!/bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
export SXHKD_SHELL='/usr/bin/sh'
sxhkd &
xsetroot -cursor_name left_ptr
exec bspwm
