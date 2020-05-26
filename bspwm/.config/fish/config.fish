# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

set -g theme_color_scheme terminal-dark-white
set -g theme_avoid_ambiguous_glyphs yes

function fish_greeting
end

function fish_right_prompt; end

alias ls='ls -a --color=auto'
alias c "clear"
alias vi "nvim"
alias vim "nvim"
alias ss "pacman -Ss"
alias qe "pacman -Qe"
alias i "sudo pacman -S"
alias u "sudo pacman -Syu"
alias r "sudo pacman -Rns"
alias sc "sudo pacman -Sc"

abbr sp "sudo pacman"
abbr s "sudo"
abbr p "pacman"
abbr y "yay"
abbr g "git"
abbr ga "git add"
abbr gc "git clone"
abbr gcm "git commit -m"
abbr gs "git status"
abbr gph "git push"
abbr gpl "git pull"

~/.config/pfetch.sh