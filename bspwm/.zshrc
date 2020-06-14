export ZSH="/home/raj/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias c="clear"
alias vi="nvim"
alias vim="nvim"
alias ss="pacman -Ss"
alias qe="pacman -Qe"
alias i="sudo pacman -S"
alias u="sudo pacman -Syu"
alias r="sudo pacman -Rns"
alias sc="sudo pacman -Sc"
alias sp="sudo pacman"
alias s="sudo"
alias p="pacman"
alias y="yay"
alias g="git"
alias ga="git add"
alias gc="git clone"
alias gcm="git commit -m"
alias gs="git status"
alias gph="git push"
alias gpl="git pull"

~/.config/ufetch.sh