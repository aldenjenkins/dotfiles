# Use neovim for vim if present.
command -v nvim >/dev/null && alias vim="nvim" vimdiff="nvim -d"

alias \
    vim="nvim"  \
    lsa="ls -la --color=auto --group-directories-first" \
    suspend="systemctl suspend" \
    s="sxiv" \
    open="xdg-open" \
    yaourt="yaourt --noconfirm" \
    mimecheck="file --brief --dereference --mime-type" \
    bell="echo" \
    zshrc="vim /home/alden/.config/zsh/.zshrc" \
    inst="sudo pacman -S $@" \
    search="sudo pacman -Ss $@" \
    k="kubectl" \
    pycharm="/home/alden/bin/pycharm-2019.1.1/bin/pycharm.sh" \
    grep="grep --color=auto" \
    diff="diff --color=auto" \
    audiodl="youtube-dl --output $XDG_MUSIC_DIR/downloaded/'%(title)'s.'%(ext)'s --extract-audio --audio-format mp3" \
    convertrawtomp3="ffmpeg -f s16le -ar 48000 -ac 2 -i aplay-D_card0-t_raw-f_S16_LE-r48000-c_2.raw" \
    icp="xclip -selection clipboard -t image/png -i" \
    ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"' \
    mbsync='mbsync -c "$XDG_CONFIG_HOME"/isync/mbsyncrc' \
