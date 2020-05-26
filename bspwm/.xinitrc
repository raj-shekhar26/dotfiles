[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
    xset +fp /home/raj/.local/share/fonts/
    xset fp rehash
sxhkd &
xsetroot capitaine-cursors left_ptr
exec bspwm
