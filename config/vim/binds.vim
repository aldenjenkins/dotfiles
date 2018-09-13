colorscheme onedark

" Pasting{
"nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F8>
set showmode
" }

" Disable autocomment new lines below commented lines{
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" }

" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix
"
" au BufNewFile,BufRead *.js,*.html,*.css
"     \ set tabstop=2
"     \ set softtabstop=2
"     \ set shiftwidth=2
"

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

set nowrap

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Leader - ( Spacebar )
let mapleader = ","
" Enable folding with the spacebar
nnoremap <space> za

syntax on
"colorscheme onedark


set number relativenumber

"Description {{{
"
"   Original by Shai Coleman, 2008-04-21.  http://colemak.com/
"   Modified by Esko, 2012-09-14.
"
"   Load colemak.vim after all other Vim scripts.
"
"   Refer to ../README.markdown for keymap explanations.
" }}}
" Require Vim >=7.0 {{{
if v:version < 700 | echohl WarningMsg | echo "colemak.vim: You need Vim version 7.0 or later." | echohl None | finish | endif
" }}}
"

""""" PYTHON DEV CONFIG
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``

onoremap c c
" https://code.djangoproject.com/wiki/UsingVimWithDjango
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

"====[ Work out what kind of file this is ]========
filetype plugin indent on
augroup FiletypeInference
    autocmd!
    autocmd BufNewFile,BufRead  *.t      setfiletype perl
    autocmd BufNewFile,BufRead  *.pod    setfiletype pod
    autocmd BufNewFile,BufRead  *.itn    setfiletype itn
    autocmd BufNewFile,BufRead  *        call s:infer_filetype()
augroup END
function! s:infer_filetype ()
    for line in getline(1,20)
        if line =~ '^\s*use\s*v\?5\.\S\+\s*;\s*$'
            setfiletype perl
            return
        elseif line =~ '^\s*use\s*v\?6\s*;\s*$'
            setfiletype perl6
            return
        endif
    endfor
endfunction


"=====[ Enable Nmap command for documented mappings ]================
"runtime plugin/documap.vim

"====[ Edit and auto-update this config file and plugins ]==========

"augroup VimReload
"autocmd!
"    autocmd BufWritePost $MYVIMRC source $MYVIMRC
"augroup END

"Nmap <silent>  ;v   [Edit .vimrc]          :next $MYVIMRC<CR>
"Nmap           ;vv  [Edit .vim/plugin/...] :next ~/.vim/plugin/

"nnoremap ; :|xnoremap ; :|onoremap ; :|
nnoremap h o|xnoremap h o|onoremap h o|
nnoremap H O|xnoremap H O|onoremap H O|
" Up/down/left/right {{{
nnoremap n h|xnoremap n h|onoremap n h|
nnoremap e j|xnoremap e j|onoremap e j|
nnoremap i k|xnoremap i k|onoremap i k|
nnoremap o l|xnoremap o l|onoremap o l|

" Map inSide to new colemak binds
onoremap s i

" }}}
" Words forward/backward {{{
" l/L = back word/WORD
" u/U = end of word/WORD
" y/Y = forward word/WORD
nnoremap l b|xnoremap l b|onoremap l b|
nnoremap L B|xnoremap L B|onoremap L B|
nnoremap u e|xnoremap u e|onoremap u e|
nnoremap U E|xnoremap U E|onoremap U E|
nnoremap y w|xnoremap y w|onoremap y w|
nnoremap Y W|xnoremap Y W|onoremap Y W|
cnoremap <C-L> <C-Left>
cnoremap <C-Y> <C-Right>
" }}}
" inSert/Replace/append (T) {{{
nnoremap s i|
nnoremap S I|
nnoremap t a|
nnoremap T A|
" }}}
" Change {{{
nnoremap w c|xnoremap w c|
nnoremap W C|xnoremap W C|
nnoremap ww cc|
" }}}
" Cut/copy/paste {{{
nnoremap x x|xnoremap x d|
nnoremap c y|xnoremap c y|
nnoremap v p|xnoremap v p|
nnoremap X dd|xnoremap X d|
nnoremap C yy|xnoremap C y|
nnoremap V P|xnoremap V P|
nnoremap gv gp|xnoremap gv gp|
nnoremap gV gP|xnoremap gV gP|
" }}}
" insert tab switch t and d for colemak
inoremap <C-t> <C-d>
inoremap <C-d> <C-t>
" Undo/redo {{{
nnoremap z u|xnoremap z :<C-U>undo<CR>|
nnoremap gz U|xnoremap gz :<C-U>undo<CR>|
nnoremap Z <C-R>|xnoremap Z :<C-U>redo<CR>|
" }}}
" Visual mode {{{
nnoremap a v|xnoremap a v|
nnoremap A V|xnoremap A V|
nnoremap ga gv
" Make insert/add work also in visual line mode like in visual block mode
xnoremap <silent> <expr> s (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
xnoremap <silent> <expr> S (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
xnoremap <silent> <expr> t (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
xnoremap <silent> <expr> T (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
" }}}
" Search {{{
" f/F are unchanged
nnoremap p t|xnoremap p t|onoremap p t|
nnoremap P T|xnoremap P T|onoremap P T|
nnoremap b ;|xnoremap b ;|onoremap b ;|
nnoremap B ,|xnoremap B ,|onoremap B ,|
nnoremap <C-i> gg|xnoremap <C-i> gg|onoremap <C-i> gg|
nnoremap <C-e> G|xnoremap <C-e> G|onoremap <C-e> G|
" }}}

 " Easier to type, and I never use the default behavior.
noremap N ^
noremap O $
vnoremap O g_
vnoremap N g0

vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

"noremap e gj
"noremap i gk
noremap ge j
noremap gi k

noremap E G
noremap I gg

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

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" make searching better
nnoremap <silent> <leader>, :noh<cr> " Stop highlight after searching
set incsearch
set showmatch

" Display extra whitespace
"set list listchars=tab:»·,trail:·,nbsp:·
"set list listchars=tab:»·,trail:·,nbsp:·

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

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

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
set history=50

"set wrapmargin=0
"set colorcolumn=+1

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

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

"Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

"Use enter to create new lines w/o entering insert mode
nnoremap <CR> o<Esc>

"Below is to fix issues with the ABOVE mappings in quickfix window
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

" Quicker window movement
nnoremap <C-e> <C-w>j
nnoremap <C-i> <C-w>k
nnoremap <C-n> <C-w>h
nnoremap <C-o> <C-w>l


" Navigate properly when lines are wrapped
nnoremap e gj
nnoremap i gk


" Always use vertical diffs
set diffopt+=vertical

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
      syntax on
endif

"" MORE AWESOME HOTKEYS
"
"
" Run the q macro
nnoremap <leader>q @q

" bind K to grep word under cursor
"nnoremap G :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>
" Ag will search from project root
let g:ag_working_path_mode="r"

"Map Ctrl + S to save in any mode
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
" Also map leader + s
map <leader>s <C-S>

" Quickly close windows
nnoremap <leader>x :x<cr>
nnoremap <leader>X :q!<cr>

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" resize panes
nnoremap <silent> <C-Left> :vertical resize +5<cr>
nnoremap <silent> <C-Right> :vertical resize -5<cr>
nnoremap <silent> <C-Down> :resize +5<cr>
nnoremap <silent> <C-Up> :resize -5<cr>

"inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
"inoremap <S-Tab> <c-n>

" Switch between the last two files
"nnoremap <leader><leader> <c-^>



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
" Mappings {{{1
"
" Useful mappings

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

"------------------------------------------------------------
let g:onedark_termcolors=256
autocmd BufWritePost .vimrc source %
nnoremap k n
nnoremap K N

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()


"====[ Set up smarter search behaviour ]=======================

set incsearch       "Lookahead as search pattern is specified
set ignorecase      "Ignore case in all searches...
set smartcase       "...unless uppercase letters used

set hlsearch        "Highlight all matches
highlight clear Search
highlight       Search    ctermfg=White  cterm=bold
highlight    IncSearch    ctermfg=White  ctermbg=Red    cterm=bold

" Absolute direction for n and N...
nnoremap  <silent><expr> k  'Nn'[v:searchforward] . ":call HLNext()\<CR>"
nnoremap  <silent><expr> K  'nN'[v:searchforward] . ":call HLNext()\<CR>"

"Delete in normal mode to switch off highlighting till next search and clear messages...
"Nmap <silent> <BS> [Cancel highlighting]  :call HLNextOff() <BAR> :nohlsearch <BAR> :call VG_Show_CursorColumn('off')<CR>::HierClear<CR>

"Double-delete to remove trailing whitespace...
"Nmap <silent> <BS><BS>  [Remove trailing whitespace] mz:call TrimTrailingWS()<CR>`z

"function! TrimTrailingWS ()
"    if search('\s\+$', 'cnw')
"        :%s/\s\+$//g
"    endif
"endfunction

"====[ Toggle visibility of naughty characters ]============

" Make naughty characters visible...
" (uBB is right double angle, uB7 is middle dot)
set lcs=tab:»·,trail:␣,nbsp:˷
highlight InvisibleSpaces ctermfg=Black ctermbg=Black
call matchadd('InvisibleSpaces', '\S\@<=\s\+\%#\ze\s*$', -10)



augroup VisibleNaughtiness
    autocmd!
    autocmd BufEnter  *       set list
    autocmd BufEnter  *       set list
    autocmd BufEnter  *.txt   set nolist
    autocmd BufEnter  *.vp*   set nolist
    autocmd BufEnter  *       if !&modifiable
    autocmd BufEnter  *           set nolist
    autocmd BufEnter  *       endif
augroup END

"=====[ Highlight cursor ]===================

" Inverse highlighting for cursor...
"highlight CursorInverse ctermfg=black ctermbg=white

" Set up highlighter at high priority (i.e. 99)
"call matchadd('CursorInverse', '\%#.', 99)

" Need an invisible cursor column to make it update on every cursor move...
" (via the visualguide.vim plugin, so as to play nice)
"runtime plugin/visualsmartia.vim
"call VG_Show_CursorColumn('off')



" "=====[ Highlight row and column on request ]===================
"
" " Toggle cursor row highlighting on request...
" highlight CursorLine   term=bold ctermbg=darkgrey ctermfg=yellow  cterm=bold
" Nmap <silent> ;c [Toggle cursor line highlighting] :set cursorline!<CR>
"
" " Toggle cursor column highlighting on request...
" " (via visualguide.vim plugin, so as to play nice)
" nmap     <silent> \  :silent call VG_Show_CursorColumn('flip')<CR>
" xnoremap <silent> \  :<C-W>silent call VG_Show_CursorColumn('flip')<CR>gv
" imap     <silent> <C-\>  <C-O>:silent call VG_Show_CursorColumn('flip')<CR>

set nocursorline
" "====[ Show when lines extend past column 80 ]=================================>!<============
" 
"set colorcolumn=80
"highlight ColorColumn ctermbg=233
" highlight ColorColumn ctermfg=Black ctermbg=Green
" 
" function! MarkMargin (on)
"     if exists('b:MarkMargin')
"         try
"             call matchdelete(b:MarkMargin)
"         catch /./
"         endtry
"         unlet b:MarkMargin
"     endif
"     if a:on
"         let b:MarkMargin = matchadd('ColorColumn', '\%81v\s*\zs\S', 100)
"     endif
" endfunction
" 
" augroup MarkMargin
"     autocmd!
"     autocmd  BufEnter  *       :call MarkMargin(1)
"     autocmd  BufEnter  *.vp*   :call MarkMargin(0)
" augroup END

function! FindDjangoSettings2() "{
    if strlen($VIRTUAL_ENV) && has('python')
        let django_check = system("pip freeze | grep -q Django")
        if v:shell_error
            echo 'django not installed.'
        else
            echo 'django is installed.'
            let output = system("find $VIRTUAL_ENV \\( -wholename '*/lib/*' -or -wholename '*/install/' \\) -or \\( -name 'settings.py' -print0 \\) | tr '\n' ' '")
            let outarray= split(output, '[\/]\+')
            let module = outarray[-2] . '.' . 'settings'
            let syspath = system("python -c 'import sys; print sys.path' | tr '\n' ' ' ")
            let curpath = '/' . join(outarray[:-2], '/')
            execute 'python import sys, os'
            execute 'python sys.path.append("' . curpath . '")'
            execute 'python sys.path.append("' . syspath . '")'
            execute 'python sys.path = ' . syspath
            execute 'python os.environ.setdefault("DJANGO_SETTINGS_MODULE", "' . module . '")'
        endif
    endif
endfunction "}

