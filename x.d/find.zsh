# Search file contents with ripgrep and fuzzy-find results with fzf
rg --column --line-number --no-heading --color=always --smart-case "" | \
fzf --ansi --no-hscroll --delimiter : --nth 4..
