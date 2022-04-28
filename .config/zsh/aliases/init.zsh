# needed for git completion to work for dotfiles alias and probably others
unsetopt completealiases

# stop errors when ssh + make it work better
alias kssh="kitty +kitten ssh"

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"
