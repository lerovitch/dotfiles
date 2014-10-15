# Taken from:
#     https://github.com/mitsuhiko/dotfiles/blob/master/Makefile

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim 
	mkdir -p ~/.vim/sessions
	ln -s ~/.vim/vimrc ~/.vimrc 
	git submodule update --init

update-vim:
	git submodule foreach git pull origin master

install-ubuntu:
	ln -s `pwd`/ubuntu/terminator/config  ~/.config/terminator/config
	rm -f ~/.bashrc
	ln -s `pwd`/bash/bash_profile ~/.bashrc

install-bash:
	rm -rf ~/.git-completion.bash
	ln -s `pwd`/bash/git-completion.bash ~/.git-completion.bash

install-mac:
	mkdir -p ~/Library/Preferences
	rm -rf ~/Library/Preferences/com.googlecode.iterm2.plist
	ln -s `pwd`/iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
	rm -rf ~/.bash_profile
	ln -s `pwd`/bash/bash_profile ~/.bash_profile
