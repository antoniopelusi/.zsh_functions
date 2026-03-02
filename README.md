# .zsh_functions

Personal zsh configuration - optimized for **Fedora**.

## Requirements

- `zsh` installed
- `git` installed
- [oh-my-zsh](https://ohmyz.sh/)

## Installation

1. Clone the repository in `~`:
    ```zsh
    git clone git@github.com:antoniopelusi/.zsh_functions.git ~/.zsh_functions
    ```

2. Install and apply:
    ```zsh
    cd ~/.zsh_functions
    make install
    source ~/.zshrc
    ```

## Commands (`x`)

Use the `x` dispatcher to run available subcommands:

```zsh
x <command> [args]
```

| Command | Description |
|---|---|
| `x list` or `x help` | List all available commands |
| `x clone <repo>` | Clone a personal GitHub repo into `~/Projects/<repo>` |
| `x update` | Update the system using `dnf` |
| `x prime-run <cmd>` | Run a command using the dedicated NVIDIA GPU (PRIME offload) |

## Aliases

| Alias | Command |
|---|---|
| `z` | `zed .` — open current directory in Zed editor |
