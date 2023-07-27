tm() {
  local session_name="$1"
  
  # Check if the session with the same name already exists
  if tmux has-session -t "$session_name" 2>/dev/null; then
    # Session already exists, attach to it
    tmux attach-session -t "$session_name"
  else
    # Session doesn't exist, create a new session with four windows
    tmux new-session -d -s "$session_name" -n "source" "zsh"
    tmux new-window -t "$session_name" -n "client" "zsh"
    tmux new-window -t "$session_name" -n "server" "zsh"
    tmux select-window -t "${session_name}:0"
    tmux attach-session -t "$session_name"
  fi
}
