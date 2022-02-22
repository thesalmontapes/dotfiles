PROMPT="[%D{%L:%M:%S}] %~ %# "

for CONFIG in "$HOME/.config/zsh/"*.zsh; do
  source "${CONFIG}"
done
