SHELL := /bin/bash
OS := $(shell uname -s)
BASH_COMPLETIONS = $(shell find `pwd`/bash/bash_completion.d/*completion.sh)
ifeq ($(OS),Darwin)
	BASH_COMPLETION_D = $(shell brew --prefix)/etc/bash_completion.d
endif
ifeq ($(OS),Linux)
	BASH_COMPLETION_D = '/etc/bash_completion.d'
	SUDO = 'sudo'
endif

install: install-vim install-bash install-git

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	vim +PluginInstall +qall

install-bash:
	rm -f ~/.bashrc
	ln -s `pwd`/bash/bashrc ~/.bashrc
	@for i in $(BASH_COMPLETIONS); do if [ -f $(BASH_COMPLETION_D)/$$(basename $$i) ]; then $(SUDO) rm $(BASH_COMPLETION_D)/$$(basename $$i); fi done
	@for i in $(BASH_COMPLETIONS); do $(SUDO) ln -s $$i $(BASH_COMPLETION_D); done

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig
