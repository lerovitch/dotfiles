# Taken from:
#     https://github.com/mitsuhiko/dotfiles/blob/master/Makefile

install-vim:
        rm -rf ~/.vim ~/.vimrc
        ln -s `pwd`/vim ~/.vim
        ln -s ~/.vim/vimrc ~/.vimrc
