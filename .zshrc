PROMPT="%~ %# "

alias vim="nvim"

alias ls="ls -G"
alias la="ls -lA"

alias gl="git log"
alias gb="git branch"
alias gs="git status"
alias gc="git checkout"
alias gt="git log --all --graph --oneline --decorate"

cd() { builtin cd "$@"; ls; } # cd: change directory and list
