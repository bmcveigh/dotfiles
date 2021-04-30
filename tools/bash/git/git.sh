#-------------------------------------------------------------------------------
# Aliases for git version control.
# Reference: https://github.com/algotech/dotaliases/blob/master/bash/git_aliases
#-------------------------------------------------------------------------------

# Git status alias
alias g='git status -sb'
alias gs='git status'

alias gitup="git up; gitb -vv"
alias gitbd="git branch -d"
alias gitbdf="git branch -D"
alias gitf="git fetch origin --prune"
alias gitmx="git merge --no-ff --no-commit "
alias gitm="git merge --no-ff "

# Alias for git help documentation.
alias gith="git help";

# Remove all merged branches locally.
alias gbdm="git branch | grep -v \"master\" | xargs git branch -d"

# Git add and remove aliases
alias ga='git add'
alias gr='git rm'

# Git branch alias
alias gb='git branch -v'
alias gba='git for-each-ref --sort=committerdate refs/heads/ --format="%(authordate:short) %(color:red)%(objectname:short) %(color:yellow)%(refname:short)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))"'
alias gbd='git for-each-ref --sort=-committerdate refs/heads/ --format="%(authordate:short) %(color:red)%(objectname:short) %(color:yellow)%(refname:short)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))"'

# Git commit aliases
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git commit -m'

# Git checkout aliases
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcod='git checkout develop'
alias gcom='git checkout master'
alias gcos='git checkout staging'

# Git fetch aliases
alias gf='git fetch'
alias gfa='git fetch --all'

# Git pull alias
alias gp='git pull'
alias gpr='git pull --rebase'

# Git pull from origin aliases
alias gprod='git pull --rebase origin develop'
alias gprom='git pull --rebase origin master'
alias gpros='git pull --rebase origin staging'

# Git pull from upstream aliases
alias gprud='git pull --rebase upstream develop'
alias gprum='git pull --rebase upstream master'
alias gprus='git pull --rebase upstream staging'

# Git push to origin aliases
alias gpo='git push origin'
alias gpod='git push origin develop'
alias gpom='git push origin master'
alias gpos='git push origin staging'

# Git push to upstream aliases
alias gpud='git push upstream develop'
alias gpum='git push upstream master'
alias gpus='git push upstream staging'

# Git push with the --force-with-lease option
alias gpofl='git push --force-with-lease origin'
alias gpufl='git push --force-with-lease upstream'

# Git rebase aliases
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias grd='git rebase develop'
alias gri='git rebase -i'
alias grm='git rebase master'
alias grs='git rebase staging'

# Git stash aliases
alias gsl='git stash list'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gss='git stash save'

# Git diff and log aliases
alias gd='git diff --color-words'
alias gl='git log --graph --pretty=format:'\''%Cred%h%Creset -
%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)%an <%ae>%Creset'\''
commit';

# Update feature branch changes, utilizing the Gitflow strategy.
alias gfu='git stash save && git rebase origin/develop && git stash pop'

# Checkout a branch based on a ticket number.
function git-checkout-ticket() {
    git checkout $(git branch | grep $1)
}
alias gcot="git-checkout-ticket"
