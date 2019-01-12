##################################
# Aliases for git version control.
##################################

alias gitup="git up; gitb -vv"
alias gits="git status"
alias gitb="git branch"
alias gitbd="git branch -d"
alias gitbdf="git branch -D"
alias gitf="git fetch origin --prune"
alias gitl="git log"
alias gitco="git checkout "
alias gitcob="git checkout -b"
alias gitmx="git merge --no-ff --no-commit "
alias gitm="git merge --no-ff "
alias gitpu="git push origin "
alias gitpl="git pull origin "
alias gita="git add "
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# Remove all merged branches locally.
alias gitbdm="git branch | grep -v \"master\" | xargs git branch -d"
