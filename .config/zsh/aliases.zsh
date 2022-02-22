cd() { builtin cd "$@"; ls; } # cd: change directory and list

alias ..="cd .."
alias ls="ls -G"
alias la="ls -lAh"

alias gl="git log"
alias gb="git branch"
alias gs="git status"
alias gc="git checkout"
alias gt="git log --all --graph --oneline --decorate"

alias vim="nvim"

alias pb="curl -F c=@- pb"

alias refresh="source $HOME/.zshrc"
