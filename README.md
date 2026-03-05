# .zsh_functions

Personal `zsh` configuration - optimized for **Fedora**.

## Requirements

- `zsh` installed
- `git` installed
- [oh-my-zsh](https://ohmyz.sh/)

## Install

```sh
git clone git@github.com:antoniopelusi/.zsh_functions.git ~/.zsh_functions
cd ~/.zsh_functions
make install
source ~/.zshrc
cd ~
```

## Uninstall

```sh
make uninstall
```

## Commands (`x`)

Use the `x` dispatcher to run available subcommands:

```sh
x <command> [args]
```

| Command | Description |
|---|---|
| `x list` or `x help` | List all available commands |
| `x clone <repo_name>` | Clone a personal GitHub repo into `~/Projects/<repo_name>` |
| `x update` | Update the system using `dnf` and `flatpak` |
| `x prime-run <cmd>` | Run a command using the dedicated **NVIDIA GPU** (PRIME offload) |

## Bin wrappers

| Command | Calls | Description |
|---|---|---|
| `zed` | `flatpak run dev.zed.Zed` | open Zed editor |
| `z` | `zed .` | open current directory in Zed editor |
