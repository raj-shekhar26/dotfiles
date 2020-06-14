#!/bin/sh
#
# ufetch-arch - tiny system info for arch

## INFO

# user is already defined
host="$(cat /etc/hostname)"
os='Arch Linux'
kernel="$(uname -sr)"
uptime="$(uptime -p | sed 's/up //')"
packages="$(pacman -Q | wc -l)"
shell="$(basename "$SHELL")"
wm="$(tail -n 1 "${HOME}/.xinitrc" | cut -d ' ' -f 2)"

## DEFINE COLORS

# probably don't change these
if [ -x "$(command -v tput)" ]; then
	bold="$(tput bold)"
	black="$(tput setaf 0)"
	red="$(tput setaf 1)"
	green="$(tput setaf 2)"
	yellow="$(tput setaf 3)"
	blue="$(tput setaf 4)"
	magenta="$(tput setaf 5)"
	cyan="$(tput setaf 6)"
	white="$(tput setaf 7)"
	reset="$(tput sgr0)"
fi

# you can change these
lc="${reset}${bold}${cyan}"         # labels
nc="${reset}${bold}${magenta}"         # user and hostname
ic="${reset}"                       # info
c0="${reset}${bold}${cyan}"                # first color

## OUTPUT

cat <<EOF

${c0}        /\\         ${nc}${USER}${ic}@${nc}${host}${reset}
${c0}       /  \\        ${lc}OS ${ic}${os}${reset}
${c0}      /\\   \\       ${lc}KE ${ic}${kernel}${reset}
${c0}     /  __  \\      ${lc}UP ${ic}${uptime}${reset}
${c0}    /  (  )  \\     ${lc}PA ${ic}${packages}${reset}
${c0}   / __|  |__\\\\    ${lc}SH ${ic}${shell}${reset}
${c0}  /.\`        \`.\\   ${lc}WM ${ic}${wm}${reset}

EOF
