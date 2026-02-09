# .zsh_functions

Personal config for zsh

1. Clone the repository in ~:
    ```zsh
    git clone git@github.com:antoniopelusi/.zsh_functions.git ~
    ```

2. Add the following lines in .zshrc:
    ```zsh
    fpath=(~/.zsh_functions $fpath)
    autoload -Uz compinit
    compinit
    
    for file in ~/.zsh_functions/*.zsh; do
        source "$file"
    done
    ```

3. Apply to .zshrc
    ```zsh
    source ~/.zshrc
    ```
