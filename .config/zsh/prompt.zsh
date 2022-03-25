autoload -Uz add-zsh-hook vcs_info
setopt PROMPT_SUBST
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:*' formats '(%F{green}%b%f) '
zstyle ':vcs_info:*' actionformats '(%F{green}%b%f%) '

PROMPT='[%D{%L:%M:%S}] %F{blue}%~%f ${vcs_info_msg_0_}%# '
