Plug 'https://github.com/junegunn/vim-plug.git'

Plug 'nvie/vim-flake8'

Plug 'junegunn/goyo.vim' "{
    nnoremap <C-g> :Goyo<CR>
"}

Plug 'simnalamburt/vim-mundo'
" < Undo tree >{
    " Enable persistent undo so that undo history persists across vim sessions
    set undofile
    set undodir=~/.config/vim/undo
    nnoremap <leader>u :MundoToggle<CR>
    let g:mundo_map_move_newer = "i"
    let g:mundo_map_move_older = "e"
" }

Plug 'tmhedberg/matchit'
" < Extended matching with "%" > {
" }

Plug 'majutsushi/tagbar' " {
    " toggle tagbar display
    map <F4> :TagbarToggle<CR>
    " autofocus on tagbar open
    let g:tagbar_autofocus = 1
    let g:tagbar_case_insensitive = 1
    let g:tagbar_map_nexttag = "k"
"}

" Code and files fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" Extension to ctrlp, for fuzzy command finder
Plug 'fisadev/vim-ctrlp-cmdpalette'

Plug 'christoomey/vim-tmux-navigator' "{
    "The changes I have in my fork are no longer needed because I mainly use pycharm now for developing
    "Plug 'aldenjenkins/vim-tmux-navigator'
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

Plug 'SkyLeach/pudb.vim' "{
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
"}

Plug 'tmux-plugins/vim-tmux-focus-events'

Plug 'roxma/vim-tmux-clipboard'

Plug 'junegunn/fzf'
