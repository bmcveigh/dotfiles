#############################
# Scripts for the bash prompt.
#############################

COLOR_RED="\033[0;31m"
COLOR_YELLOW="\033[0;33m"
COLOR_GREEN="\033[0;32m"
COLOR_OCHRE="\033[38;5;95m"
COLOR_BLUE="\033[0;34m"
COLOR_WHITE="\033[0;37m"
COLOR_RESET="\033[0m"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

display_time() {
   date +"%T"
}
export PS1="$(echo $COLOR_GREEN)\w$(echo $COLOR_YELLOW)\$(parse_git_branch)$(echo $COLOR_RESET) $(echo $COLOR_RED)@\$(echo $COLOR_RESET) $(echo $COLOR_BLUE)\\D{%T}$(echo $COLOR_RESET)\n> $(echo $COLOR_YELLOW)"

# Output colors for CLI ls command.
# See: https://apple.stackexchange.com/questions/33677/how-can-i-configure-mac-terminal-to-have-color-ls-output
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
