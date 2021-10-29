PROMPT="[%D{%L:%M:%S}] %~ %# "

alias vim="nvim"

alias ls="ls -G"
alias la="ls -lAh"

alias gl="git log"
alias gb="git branch"
alias gs="git status"
alias gc="git checkout"
alias gt="git log --all --graph --oneline --decorate"

cd() { builtin cd "$@"; ls; } # cd: change directory and list
alias ..="cd .."

alias pb="curl -F c=@- pb"

if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

_gen_fzf_default_opts() { # https://github.com/fnune/base16-fzf

local color00='#282a36'
local color01='#34353e'
local color02='#43454f'
local color03='#78787e'
local color04='#a5a5a9'
local color05='#e2e4e5'
local color06='#eff0eb'
local color07='#f1f1f0'
local color08='#ff5c57'
local color09='#ff9f43'
local color0A='#f3f99d'
local color0B='#5af78e'
local color0C='#9aedfe'
local color0D='#57c7ff'
local color0E='#ff6ac1'
local color0F='#b2643c'

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
" --color=bg+:$color00,bg:$color00,spinner:$color0D,hl:$color0D"\
" --color=fg:$color05,header:$color05,info:$color0A,pointer:$color07"\
" --color=marker:$color07,fg+:$color07,prompt:$color0D,hl+:$color0D"\
" --color=gutter:$color00"

}

_gen_fzf_default_opts
