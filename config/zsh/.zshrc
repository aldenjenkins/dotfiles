export ZGEN_DIR=${XDG_DATA_HOME:-$HOME/.local/share}/zgen
#export ZSH_LPLUG_DIR=${XDG_CONFIG_HOME:-$HOME/.config}/zsh/lplug

source $ZGEN_DIR/zgen.zsh
# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen load 'zsh-users/zsh-completions'
  zgen load 'zsh-users/zsh-autosuggestions'
  zgen load 'zdharma/fast-syntax-highlighting'

  # generate the init script from plugins above
  zgen save
fi

##zgen load $ZSH_LPLUG_DIR/tmux.zsh
#zgen load $ZSH_LPLUG_DIR/fzf-plugin.zsh
#source $ZSH/oh-my-zsh.sh
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source $ZSH/plugins/fzf/fzf.plugin.zsh
source $XDG_CONFIG_HOME/zsh/aliases.zsh
source $XDG_CONFIG_HOME/zsh/functions.zsh
source $XDG_CONFIG_HOME/zsh/prompt.zsh
source $XDG_CONFIG_HOME/zsh/extra.zsh
source /usr/bin/virtualenvwrapper.sh
source $XDG_CONFIG_HOME/zsh/various_plugins/fzf-cd.zsh
#source $XDG_CONFIG_HOME/zsh/various_plugins/marker-tweak-fzf.zsh
