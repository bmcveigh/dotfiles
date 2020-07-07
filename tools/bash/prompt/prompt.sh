#############################
# Scripts for the bash prompt.
#############################

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

display_time() {
   date +"%T"
}
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] @ \[\033[32m\]\\D{%T}\[\033[00m\]\n> \[\033[01;33m\]"

# Output colors for CLI ls command.
# See: https://apple.stackexchange.com/questions/33677/how-can-i-configure-mac-terminal-to-have-color-ls-output
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
