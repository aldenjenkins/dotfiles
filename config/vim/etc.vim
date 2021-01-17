"colorscheme onedark
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Automatically indents vim-surround surroundings
set smartindent

" Enable syntax highlighting
syntax on

let python_highlight_all=1

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

set guioptions+=a

set encoding=utf-8
set textwidth=119

set nowrap

set number relativenumber
set clipboard+=unnamedplus
set backupdir=$XDG_CACHE_HOME/vim,~/,/tmp
set viminfo+=n$XDG_CACHE_HOME/vim/viminfo
set runtimepath=$XDG_CONFIG_HOME/vim,$XDG_CONFIG_HOME/vim/after,$VIM,$VIMRUNTIME

augroup filetype_yaml
    autocmd!
    autocmd BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
    autocmd FileType yaml |
        setl shiftwidth=2 |
        setl softtabstop=2 |
        setl tabstop=2
        setl indentkeys-=<:>
augroup END

let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "address,article,aside,audio,blockquote,canvas,dd,div,dl,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hgroup,hr,main,nav,noscript,ol,output,p,pre,section,table,tfoot,ul,video"

autocmd FileType html set ft=htmldjango.html

augroup filetype_html_or_ruby
    autocmd!
    autocmd Filetype html setlocal ts=2 sw=2 expandtab
    autocmd Filetype htmldjango setlocal ai sts=2 ts=2 sw=2 expandtab
    autocmd Filetype ruby setlocal ts=2 sw=2 expandtab nnoremap <buffer> <localleader>c I/*<space><esc><s-a><space>*/<esc>
augroup END

" https://code.djangoproject.com/wiki/UsingVimWithDjango
augroup mypythonhooks
    au!
    autocmd FileType python set sw=4
    autocmd FileType python set ts=4
    autocmd FileType python set sts=4
augroup END

"====[ Work out what kind of file this is ]========
" filetype plugin indent on
" augroup FiletypeInference
"     autocmd!
"     autocmd BufNewFile,BufRead  *.t      setfiletype perl
"     autocmd BufNewFile,BufRead  *.pod    setfiletype pod
"     autocmd BufNewFile,BufRead  *.itn    setfiletype itn
"     autocmd BufNewFile,BufRead  *        call s:infer_filetype()
" augroup END
" function! s:infer_filetype ()
"     for line in getline(1,20)
"         if line =~ '^\s*use\s*v\?5\.\S\+\s*;\s*$'
"             setfiletype perl
"             return
"         elseif line =~ '^\s*use\s*v\?6\s*;\s*$'
"             setfiletype perl6
"             return
"         endif
"     endfor
" endfunction
" 
" """"" PYTHON DEV CONFIG
" autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" autocmd BufWritePre *.py normal m`:%s/\s\+$//e``



"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden


" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

"Allow usage of mouse in iTerm
set ttyfast

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.


"====[ Set up smarter search behaviour ]=======================

set incsearch       "Lookahead as search pattern is specified
set ignorecase      "Ignore case in all searches...
set smartcase       "...unless uppercase letters used


" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

set noswapfile  " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=500

"autocmd! BufReadPost * :if line('$') > 20 | set foldlevel=1;  set foldmethod=indent ; set foldnestmax=2 | endif

" Open new split panes to right and bottom, which feels more natural
" set splitbelow
set splitright

" Auto resize Vim splits to active split
set winwidth=104
set winheight=5
set winminheight=5
set winheight=999

"HTML Editing
set matchpairs+=<:>

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

"Toggle relative numbering, and set to absolute on loss of focus or insert mode
" set rnu
" function! ToggleNumbersOn()
"     set nu!
"     set rnu
" endfunction
" function! ToggleRelativeOn()
"     set rnu!
"     set nu
" endfunction
" autocmd FocusLost * call ToggleRelativeOn()
" autocmd FocusGained * call ToggleRelativeOn()
" autocmd InsertEnter * call ToggleRelativeOn()
" autocmd InsertLeave * call ToggleRelativeOn()

" Always use vertical diffs
set diffopt+=vertical

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
" set t_vb=

" Enable use of the mouse for all modes
set mouse=a

set autowrite     " Automatically :write before running commands
set autoread      " Reload files changed outside vim

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4


"------------------------------------------------------------

let g:onedark_termcolors=256
" Autoreload vimrc on save
augroup myvimrchooks
    au!
    autocmd BufWritePost ~/dotfiles/config/vim/etc.vim,~/dotfiles/config/vim/plugins.vim,~/dotfiles/config/vim/binds.vim source ~/.config/nvim/init.vim
augroup END


function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

" Eliminate delay from going from insert to normal mode
set timeoutlen=1000 ttimeoutlen=0

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch        "Highlight all matches
highlight clear Search
highlight       Search    ctermfg=White  cterm=bold
highlight    IncSearch    ctermfg=White  ctermbg=Red    cterm=bold

set nocursorline




" Run xrdb whenever Xdefaults or Xresources are updated.
augroup myxresourceshooks
    au!
    autocmd BufWritePost ~/.config/X11/Xresources,~/.Xdefaults !xrdb %
augroup END


augroup myi3confighooks
    au!
    autocmd BufWritePost ~/.config/i3/config !i3 restart
augroup END






" Use lf to select and open file(s) in vim (adapted from ranger).
"
" You need to either copy the content of this file to your ~/.vimrc or source
" this file directly:
"
"     let lfvim = "/path/to/lf.vim"
"     if filereadable(lfvim)
"         exec "source " . lfvim
"     endif
"
" You may also like to assign a key to this command:
"
"     nnoremap <leader>l :LF<cr>
"

"function! LF()
"    let temp = tempname()
"    exec 'silent !lf -selection-path=' . shellescape(temp)
"    if !filereadable(temp)
"        redraw!
"        return
"    endif
"    let names = readfile(temp)
"    if empty(names)
"        redraw!
"        return
"    endif
"    exec 'edit ' . fnameescape(names[0])
"    for name in names[1:]
"        exec 'argadd ' . fnameescape(name)
"    endfor
"    redraw!
"endfunction
"command! -bar LF call LF()

autocmd BufWritePost ~/src/var/dwmblocks/config.h !cd ~/src/var/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }


