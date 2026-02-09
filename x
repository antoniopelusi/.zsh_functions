local cmd="$1"
local cmd_dir="$HOME/.zsh_functions/x.d"

if [[ -z "$cmd" || "$cmd" == "help" || "$cmd" == "list" ]]; then
  echo "Usage: x <command> [args]\n\nAvailable commands:"
  for f in "$cmd_dir"/*.zsh(N); do
    echo "  - ${f:t:r}"
  done | sort
  return 0
fi

local cmd_file="$cmd_dir/$cmd.zsh"
if [[ ! -f "$cmd_file" ]]; then
  echo "Unknown command: $cmd"
  return 1
fi

shift
source "$cmd_file"
