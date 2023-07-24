tmux() {
  local session_name="$1"
  
  # Check if a session name is provided
  if [ -z "$session_name" ]; then
    # No session name provided, use default `tmux` behavior
    command tmux
  else
    # Check if the session with the same name already exists
    if command tmux has-session -t "$session_name" 2>/dev/null; then
      # Session already exists, attach to it
      command tmux attach-session -t "$session_name"
    else
      # Session doesn't exist, create a new session with four windows
      command tmux new-session -d -s "$session_name" -n "source" "zsh"
      command tmux new-window -t "$session_name" -n "client" "zsh"
      command tmux new-window -t "$session_name" -n "server" "zsh"
      command tmux select-window -t "${session_name}:0"
      command tmux attach-session -t "$session_name"
    fi
  fi
}
