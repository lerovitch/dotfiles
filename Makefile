# Taken from:
#     https://github.com/mitsuhiko/dotfiles/blob/master/Makefile

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim 
	ln -s ~/.vim/vimrc ~/.vimrc 
	git submodule update --init

update-vim:
	git submodule foreach git pull origin master

install-bash:
	rm ~/.git-completion.bash
	rm ~/.bash_profile
	ln -s `pwd`/bash/git-completion.bash ~/.git-completion.bash
	ln -s `pwd`/bash/bash_profile ~/.bash_profile
	mkdir -p ~/.ssh
	rm -rf ~/.ssh/config
	ln -s `pwd`/ssh/config ~/.ssh/config
	mkdir -p ~/Library/Preferences
	ln -s `pwd`/iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
