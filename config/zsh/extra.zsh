bindkey -v

# Don't allow overwrite redirection ">" unless forced with ">|" as a safeguard.
set -o noclobber

# Binds for vi mode
bindkey '^Z' undo
bindkey -M vicmd 'n' vi-backward-char
bindkey -M vicmd 'N' vi-first-non-blank
bindkey -M vicmd 'i' vi-backward-char
bindkey -M vicmd 'i' vi-backward-char
bindkey -M vicmd 'o' vi-forward-char
bindkey -M vicmd 'T' vi-add-eol
bindkey -M vicmd 't' vi-add-next
bindkey -M vicmd 'S' vi-insert-bol
bindkey -M vicmd 's' vi-insert
bindkey -M vicmd 'l' vi-backward-word
bindkey -M vicmd 'L' vi-backward-blank-word
bindkey -M vicmd 'u' vi-forward-word-end
bindkey -M vicmd 'U' vi-forward-blank-word-end
bindkey -M vicmd 'y' vi-forward-word
bindkey -M vicmd 'Y' vi-forward-blank-word
bindkey -M vicmd 'K' vi-rev-repeat-search
bindkey -M vicmd 'k' vi-repeat-search
bindkey -M vicmd 'c' vi-yank
bindkey -M vicmd 'C' vi-yank-whole-line
bindkey -M vicmd 'w' vi-change
bindkey -M vicmd 'W' vi-change-eol
bindkey -M vicmd 's' vi-insert
bindkey -M vicmd 'S' vi-insert-bol
bindkey -M vicmd 'z' undo
bindkey -M vicmd 'Z' redo

# Fix to ensure delete actualy deletes characters instead of uppercasing them
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "^[[P" delete-char
bindkey -M vicmd "^[[3~" delete-char
bindkey -M vicmd "^[3;5~" delete-char
bindkey -M vicmd "^[[P" delete-char
bindkey  '\C-x\C-e' edit-command-line
#bindkey -M vicmd 'l' vi-open-line-below

# For vim mappings:
stty -ixon

# Do menu-driven completion.
zstyle ':completion:*' menu select=2

# Color completion for some things.
# http://linuxshellaccount.blogspot.com/2008/12/color-completion-using-zsh-modules-on.html
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# formatting and messages
# http://www.masterzen.fr/2009/04/19/in-love-with-zsh-part-one/
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format "$fg[yellow]%B--- %d%b"
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format "$fg[red]No matches for:$reset_color %d"

# allows typing ..[TAB] for auto completion of / just like in bash
zstyle ':completion:*' special-dirs true

#if [[ -z "$TMUX" ]]; then
#    # /usr/bin/python $HOME/creations/fortune.py | cowsay
#    function chpwd() {
#        emulate -L zsh
#        ls --color=auto --group-directories-first
#    };
#else
#    export TERM="screen-256color"
#    echo "Tmux session $TMUX"
#fi

# Fix up down fuzzy search with vim mode make search up and down work, so partially type and hit up/down to find relevant stuff
# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

if [ -n "$VIRTUAL_ENV" ]; then
  # $VIRTUAL_ENV looks like /home/alden/.virtualenvs/name and we just want to source `name`
  ENV=`echo $VIRTUAL_ENV | sed 's/\//\ /g' | awk '{print $4}'`
  workon "$VIRTUAL_ENV"
fi

# Use beam shape cursor on startup.
echo -ne '\e[5 q'
# Use beam shape cursor for each new prompt.
preexec() { echo -ne '\e[5 q' ;}

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

bindkey -s '^o' 'lfcd\n'  # zsh

# pip autocompletion
eval "`pip completion --zsh`"
compctl -K _pip_completion pip3

# Fix systemctl completion
_systemctl_unit_state() {
  typeset -gA _sys_unit_state
  _sys_unit_state=( $(__systemctl list-unit-files "$PREFIX*" | awk '{print $1, $2}') ) }
