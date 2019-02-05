#!/bin/sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo pip install virtualenvwrapper
ln -s `pwd`/config $HOME/.config
ln -s `pwd`/config/vim $HOME/.vim
ln -s `pwd`/scripts $HOME/.scripts
ln -s `pwd`/creations $HOME/creations
ln -s `pwd`/zsh/zshrc $HOME/.zshrc
mkdir -p ~/Photos/{wallpapers,screenshots}
mkdir -p ~/Videos/{audio-recordings,Youtube,screen-recordings,memes,nonmemes}

# ssh-agent service will now start at startup
systemctl --user enable ssh-agent
