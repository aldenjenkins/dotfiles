# Installation
* This repository should be used as a `git --bare` repository because bare repos are the supreme endgame of config management 😎
    - [see here](https://www.atlassian.com/git/tutorials/dotfiles) for related details 

## Setup
```bash
git clone --bare https://github.com/aldenjenkins/dotfiles.git $HOME/dotfiles
function config {
    /usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
    echo "Checked out config.";
else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```

## Example usage
```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```
