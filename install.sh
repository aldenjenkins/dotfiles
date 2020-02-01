#!/bin/sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo pip install virtualenvwrapper
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# History Fuzzy Search
git clone https://github.com/junegunn/fzf.git ${ZSH}/custom/plugins/fzf
rm -rf ~/.config ~/.zshrc
ln -s `pwd`/config $HOME/.config
ln -s `pwd`/config/vim $HOME/.vim
ln -s `pwd`/scripts $HOME/.scripts
ln -s `pwd`/creations $HOME/creations
ln -s `pwd`/zsh/zshrc $HOME/.zshrc
ln -s `pwd`/config/emoji.emoji $HOME/.emoji
mkdir -p ~/Photos/{wallpapers,screenshots}
mkdir -p ~/Videos/{audio-recordings,Youtube,screen-recordings,memes,nonmemes}

# ssh-agent service will now start at startup
systemctl --user enable ssh-agent.service
systemctl --user enable clipmenud.service
