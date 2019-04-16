"Plug 'crusoexia/vim-monokai'
Plug 'joshdick/onedark.vim'

Plug 'vim-airline/vim-airline'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


"Plug 'laurentgoudet/vim-howdoi'
"{
"set runtimepath^=~/.vim/bundle/vim-howdoi
"}
"Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
"{
    nnoremap <C-g> :Goyo<CR>
"}
"Plug 'junegunn/limelight.vim'
Plug 'https://github.com/junegunn/vim-plug.git'
Plug 'sheerun/vim-polyglot'
"Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'Valloric/YouCompleteMe'
"let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
"let g:ycm_complete_in_comments = 1 " Completion in comments
"let g:ycm_complete_in_strings = 1 " Completion in string
Plug 'scrooloose/nerdtree'
" Nerdtree config{
    let g:NERDTreeHijackNetrw = 0
    au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]
    " start nerdtree at startup if no file was specified
augroup nerdtreehooks
    au!
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | bprevious | endif
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
augroup END
    " nerdtree shortcut
    map <F2> :NERDTreeToggle<CR>
    " show hidden files
    "autocmd vimenter * NERDTree
    let NERDTreeShowHidden=1
    let NERDTreeIgnore = ['\.pyc$'] " don't show pyc files
    let NERDTreeMapOpenVSplit ='v'
    let NERDTreeMapOpenSplit ='h'
    let NERDTreeMapOpenExpl = 'y'
"}
"Plug 'scrooloose/nerdcommenter'

Plug 'godlygeek/tabular'
" < Alignment plugin > {
" }
"Plug 'Raimondi/delimitMate'
" < Automatic closing of quotes, brackets, etc > {
""    let g:delimitMate_expand_cr = 2
""    let g:delimitMate_expand_space = 1
""    let g:delimitMate_expand_inside_quotes = 1
""    let g:delimitMate_balance_matchpairs = 1
""    let g:delimitMate_jump_expansion = 1
""    au FileType python let b:delimitMate_nesting_quotes = ['"']
" }

"Plug 'mattn/gist-vim'
"" < Vimscript for creating gists (http://gist.github.com) > {
"    let g:gist_update_on_write = 2
"    let g:gist_clip_command = 'xclip -selection clipboard'
"    let g:gist_detect_filetype = 1
"    let g:gist_open_browser_after_post = 1
"    let g:gist_update_on_write = 2
    " Only :w! updates a gist
" }
"Plug 'mattn/webapi-vim'
" < Auxiliary library > {
" }
"Plug 'vim-scripts/TaskList.vim'
" < TO DO-finder > {
""     nmap <leader>tl <Plug>TaskList
"}
Plug 'simnalamburt/vim-mundo'
" < Undo tree >{
" Enable persistent undo so that undo history persists across vim sessions
    set undofile

    set undodir=~/.vim/undo
    nnoremap <leader>u :MundoToggle<CR>
    let g:mundo_map_move_newer = "i"
    let g:mundo_map_move_older = "e"
" }
"Plug 'lyokha/vim-xkbswitch'
"" < Automatic layout switcher > {
"    let g:XkbSwitchEnabled = 1
"    "let g:XkbSwitchIMappingsSkipFt = ['tex'] " need for latex-suite
"    let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'
"    " if has("unix")
"        " let s:uname = system("uname -s")
"        " if s:uname == "Darwin\n"
"            " let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.dylib'
"        " endif
"    " endif
"    " let g:XkbSwitchIMappings = ['ru(typewriter)']
"" }
Plug 'SirVer/ultisnips'
"" < Snippets engine > {
let g:UltiSnipsExpandTrigger       = ",o"
let g:UltiSnipsJumpForwardTrigger  = ",e"
let g:UltiSnipsJumpBackwardTrigger = ",i"
let g:UltiSnipsListSnippets        = ",n" "List possible snippets based on current file
" }


"Plug 'garbas/vim-snipmate'
""dependencies{
"  Plug 'MarcWeber/vim-addon-mw-utils'
"  Plug 'tomtom/tlib_vim'
""}
Plug 'honza/vim-snippets'
" < Snippets for ultisnips > {
" }

" Plug 'kien/rainbow_parentheses.vim'
" " Better rainbow parentheses config{
" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['red',         'firebrick3'],
"     \ ]
" let g:rbpt_loadcmd_toggle = 1
" let g:rbpt_max = 16
" 
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
" }
Plug 'tmhedberg/matchit'
" < Extended matching with "%" > {
" }
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'JamshedVesuna/vim-markdown-preview'
"Plug 'jistr/vim-nerdtree-tabs'
"let g:nerdtree_tabs_autoclose = 0
"let g:nerdtree_tabs_open_on_console_startup=1


Plug 'tmhedberg/SimpylFold'
nnoremap <space> za
vnoremap <space> zf
"Plug 'vimwiki/vimwiki'

" https://github.com/fisadev/fisa-vim-config/blob/master/.vimrc {
" Code commenter
"Plug 'scrooloose/nerdcommenter'
" Class/module browser
Plug 'majutsushi/tagbar'
" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1
let g:tagbar_case_insensitive = 1
let g:tagbar_map_nexttag = "k"

" Code and files fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" Extension to ctrlp, for fuzzy command finder
Plug 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
Plug 'mattn/emmet-vim'
" Python autocompletion, go to definition.
"Plug 'davidhalter/jedi-vim'
"" All these mappings work only for python code:
"" Go to definition
"let g:jedi#completions_enabled = 0
"
"let g:jedi#goto_command = '<leader>d'
"" Find ocurrences
"let g:jedi#usages_command = '<leader>o'
"" Find assignments
"let g:jedi#goto_assignments_command = '<leader>a'
"let g:jedi#auto_initialization = 0
"autocmd Filetype py,c,h,php,java let g:jedi#auto_initialization = 1
"" Go to definition in new tab
"nmap <leader>t :tab split<CR>:call jedi#goto()<CR>
" Better autocompletion
" Plug 'Shougo/neocomplcache.vim'
" " most of them not documented because I'm not sure how they work
" " (docs aren't good, had to do a lot of trial and error to make
" " it play nice)
" let g:neocomplcache_enable_at_startup = 1
" let g:neocomplcache_enable_ignore_case = 1
" let g:neocomplcache_enable_smart_case = 1
" let g:neocomplcache_enable_auto_select = 1
" let g:neocomplcache_enable_fuzzy_completion = 1
" let g:neocomplcache_enable_camel_case_completion = 1
" let g:neocomplcache_enable_underbar_completion = 1
" let g:neocomplcache_fuzzy_completion_start_length = 1
" let g:neocomplcache_auto_completion_start_length = 1
" let g:neocomplcache_manual_completion_start_length = 1
" let g:neocomplcache_min_keyword_length = 1
" let g:neocomplcache_min_syntax_length = 1
" " complete with workds from any opened file
" let g:neocomplcache_same_filetype_lists = {}
" let g:neocomplcache_same_filetype_lists._ = '_'
" " Disable NeoComplCache for certain filetypes
" if has('autocmd')
"   autocmd FileType rmd,md,pandoc,markdown nested NeoComplCacheLock
"  endif

" ... some plugins left out here intentionally
" Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
" " Automatically sort python imports
" Plug 'fisadev/vim-isort'
" Drag visual blocks arround
"Plug 'fisadev/dragvisuals.vim'
"" mappings to move blocks in 4 directions
"vmap <expr> <S-LEFT> DVB_Drag('left')
"vmap <expr> <S-RIGHT> DVB_Drag('right')
"vmap <expr> <S-DOWN> DVB_Drag('down')
"vmap <expr> <S-UP> DVB_Drag('up')
"" mapping to duplicate block
"vmap <expr> D DVB_Duplicate()
" Window chooser
"Plug 't9md/vim-choosewin'
" Window Chooser ------------------------------

" mapping
"nmap  -  <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1
" Python and other languages code checker
Plug 'scrooloose/syntastic'
" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>
" check also when just opened the file
let g:syntastic_check_on_open = 1
" don't put icons on the sign column (it hides the vcs status icons of signify)
let g:syntastic_enable_signs = 0
" custom icons (enable them if you use a patched font, and enable the previous
" setting)
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_style_error_symbol = '✗'
"let g:syntastic_style_warning_symbol = '⚠'
" Paint css colors with the real color
Plug 'lilydjwg/colorizer'
"Plug 'christoomey/vim-tmux-navigator' "{
Plug 'aldenjenkins/vim-tmux-navigator'
" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-n> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-e> :TmuxNavigateDown<cr>
nnoremap <silent> <c-o> :TmuxNavigateRight<cr>
" Disable tmux navigator when zooming the Vim pane
map <Tab> <silent>
nnoremap <Tab> <silent>
"autocmd Filetype rmd nnoremap <Tab> 6i&nbsp;<esc>l
nnoremap <silent> <c-i> :TmuxNavigateUp<cr>
nnoremap <silent> <c-.> :TmuxNavigatePrevious<cr><Paste>
"let g:tmux_navigator_disable_when_zoomed = 1
"}

Plug 'SkyLeach/pudb.vim'
"if has('nvim')
"  let g:python_host_prog='~/.virtualenvs/neovim2/bin/python'
"  let g:python3_host_prog='~/.virtualenvs/neovim3/bin/python'
"  " set the virtual env python used to launch the debugger
"  let g:pudb_python='~/.virtualenvs/poweruser_tools/bin/python'
"  " set the entry point (script) to use for pudb
"  let g:pudb_entry_point='~/src/poweruser_tools/test/test_templates.py'
"  " Unicode symbols work fine (nvim, iterm, tmux, nyovim tested)
"  let g:pudb_breakpoint_symbol='☠'
"endif

Plug 'tmux-plugins/vim-tmux-focus-events'

Plug 'roxma/vim-tmux-clipboard'


"}


