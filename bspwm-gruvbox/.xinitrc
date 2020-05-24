[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
sxhkd &
xsetroot capitaine-cursors left_ptr
exec bspwm
