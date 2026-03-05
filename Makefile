.PHONY: install
.SILENT: install

install:
	echo "|> Installing zsh_functions..."
	echo 'export PATH=$$HOME/bin:$$HOME/.local/bin:/usr/local/bin:$$PATH' > ~/.zshrc
	echo 'export ZSH="$$HOME/.oh-my-zsh"' >> ~/.zshrc
	echo 'ZSH_THEME="bira"' >> ~/.zshrc
	echo 'source $$ZSH/oh-my-zsh.sh' >> ~/.zshrc
	echo '' >> ~/.zshrc
	echo 'fpath=(~/.zsh_functions $$fpath)' >> ~/.zshrc
	echo 'autoload -Uz x' >> ~/.zshrc
	echo 'autoload -Uz compinit' >> ~/.zshrc
	echo 'compinit -C' >> ~/.zshrc
	echo "|> zsh_functions installed"
	echo "|> Installing bin wrappers..."
	sudo cp bin/zed /usr/local/bin/zed
	sudo cp bin/z /usr/local/bin/z
	sudo chmod +x /usr/local/bin/zed /usr/local/bin/z
	echo "|> bin wrappers installed"
