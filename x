local cmd="$1"
local cmd_dir="$HOME/.zsh_functions/x.d"

if [[ -z "$cmd" || "$cmd" == "help" || "$cmd" == "list" ]]; then
  printf "Usage: x <command> [args]\n\nAvailable commands:\n"
  for f in "$cmd_dir"/*.zsh(N); do
    local name="${f:t:r}"
    local desc
    desc=$(head -1 "$f" | sed 's/^# //')
    printf "  %-15s %s\n" "$name" "${desc:-(no description)}"
  done | sort
  return 0
fi

local cmd_file="$cmd_dir/$cmd.zsh"
if [[ ! -f "$cmd_file" ]]; then
  printf "x: unknown command '%s'\n" "$cmd"
  return 1
fi

shift
zsh "$cmd_file" "$@"
