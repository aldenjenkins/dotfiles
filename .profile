# Profile file. Runs on login. Environmental variables are set here.

source $HOME/.secrets/.env

export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority" # This line will break some DMs.

# Export XDG environmental variables from '~/.config/user-dirs.dirs'
eval "$(sed 's/^[^#].*/export &/g;t;d' ~/.config/user-dirs.dirs)"

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/local/go/bin:$HOME/.local/share/gem/bin:/home/alden/tmp/downloads/google-cloud-sdk/bin
export KEYMAP="colemak"

# 10ms for key sequences. makes hitting escape in vim work instantly.
export KEYTIMEOUT=1

# for `better_exceptions` https://github.com/Qix-/better-exceptions?utm_source=mybridge&utm_medium=blog&utm_campaign=read_more
export BETTER_EXCEPTIONS=1

# Path to your oh-my-zsh installation.
export ZSH="$XDG_CONFIG_HOME/zsh/oh-my-zsh"

# Openssl random file
export RANDFILE="$XDG_CACHE_HOME/.rnd"

# Default Programs:
export TERM="xterm-256color"
export READER="zathura"
export BROWSER="chromium"
export EDITOR="nvim"
export OPENER="xdg-open"
export TERMINAL="st"

#export WINEARCH=""
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"

export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch-config"
export HISTFILE="$XDG_DATA_HOME/.zsh_history"
export HISTSIZE=10000000
export SAVEHIST=10000000
export DEFAULT_USER="alden"
export WORKON_HOME="$XDG_DATA_HOME/.virtualenvs"
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export ELINKS_CONFDIR="$XDG_CONFIG_HOME"/elinks
export WEECHAT_HOME="$XDG_CONFIG_HOME"/weechat
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export CM_LAUNCHER=rofi
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export LESSKEY="$XDG_CONFIG_HOME/lesskey"
export INPUTRC="$XDG_CONFIG_HOME/inputrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export DICS="/usr/share/stardict/dic/"
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/startup.py"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"

# This is the list for lf icons:
export LF_ICONS="di=📁:\
fi=📃:\
tw=🤝:\
ow=📂:\
ln=⛓:\
or=❌:\
ex=🎯:\
*.txt=✍:\
*.mom=✍:\
*.me=✍:\
*.ms=✍:\
*.png=🖼:\
*.ico=🖼:\
*.jpg=📸:\
*.jpeg=📸:\
*.gif=🖼:\
*.svg=🗺:\
*.xcf=🖌:\
*.html=🌎:\
*.xml=📰:\
*.gpg=🔒:\
*.css=🎨:\
*.pdf=📚:\
*.djvu=📚:\
*.epub=📚:\
*.csv=📓:\
*.xlsx=📓:\
*.tex=📜:\
*.md=📘:\
*.r=📊:\
*.R=📊:\
*.rmd=📊:\
*.Rmd=📊:\
*.mp3=🎵:\
*.opus=🎵:\
*.ogg=🎵:\
*.m4a=🎵:\
*.flac=🎼:\
*.mkv=🎥:\
*.mp4=🎥:\
*.webm=🎥:\
*.mpeg=🎥:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.z64=🎮:\
*.v64=🎮:\
*.n64=🎮:\
*.1=ℹ:\
*.nfo=ℹ:\
*.info=ℹ:\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=🔽:\
*.py=🐍:\
"

[ ! -f ~/.config/shortcutrc ] && shortcuts >/dev/null 2>&1

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

