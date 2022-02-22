zmodload zsh/complist

bindkey -M menuselect '^h' vi-backward-char
bindkey -M menuselect '^k' vi-up-line-or-history
bindkey -M menuselect '^l' vi-forward-char
bindkey -M menuselect '^j' vi-down-line-or-history

autoload -Uz compinit; compinit
_comp_options+=(globdots)

zstyle ':completion:*' menu select

setopt AUTO_MENU
setopt COMPLETE_IN_WORD
