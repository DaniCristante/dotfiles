#!/usr/bin/env zsh

alias gst="git status"
alias gd="git diff"
alias g.="git add ."
alias gp="git add -p"
alias lhidden="ls -ld .?*"
alias vimstall="vim +PluginInstall +qall"
alias p="python3 $1"
alias grhard="git reset --hard HEAD"
alias fetchtoclean="git fetch -p && git checkout master && git pull && git branch -r --merged \
  | grep -v '\*\|master\|release\|development' \
  | sed 's/origin\///' > merged_branches.txt"
alias cleanBranches="cat merged_branches.txt | xargs -n 1 git push --delete origin && rm -rf merged_branches.txt"
