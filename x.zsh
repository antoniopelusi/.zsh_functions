_x_commands_dir="$HOME/.zsh_functions/x"

x_help() {
  echo "Usage: x <command> [args]"
  echo
  echo "Available commands:"

  local file
  for file in "$_x_commands_dir"/*.zsh; do
    basename "$file" .zsh
  done | sort | sed 's/^/  - /'
}

x() {
  local cmd="$1"

  if (( $# > 0 )); then
    shift
  fi

  if [[ -z "$cmd" || "$cmd" = "help" || "$cmd" = "list" ]]; then
    x_help
    return 0
  fi

  local cmd_file="$_x_commands_dir/$cmd.zsh"

  if [[ ! -f "$cmd_file" ]]; then
    echo "Unknown x command: $cmd"
    return 1
  fi

  source "$cmd_file"
}
