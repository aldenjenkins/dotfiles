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

Plug 'tpope/vim-surround'
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

Plug 'majutsushi/tagbar' " {
    " toggle tagbar display
    map <F4> :TagbarToggle<CR>
    " autofocus on tagbar open
    let g:tagbar_autofocus = 1
    let g:tagbar_case_insensitive = 1
    let g:tagbar_map_nexttag = "k"
"}

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
map <C-p> :FZF<CR>

" Javascript
Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_plugin_ngdoc = 1

" Typescript
Plug 'leafgarland/typescript-vim'

" React
Plug 'maxmellon/vim-jsx-pretty'

Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue']}
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'ternjs/tern_for_vim', { 'do': 'yarn global add tern' }
"Plug 'carlitux/deoplete-ternjs'
"
"let g:deoplete#enable_at_startup = 1
""let g:deoplete#auto_complete_start_length = 1
""let g:deoplete#sources = {}
""let g:deoplete#sources.javascript = ['buffer', 'ternjs']
""let g:deoplete#sources#ternjs#tern_bin = '/home/alden/.local/share/npm/bin/tern'
""let g:deoplete#sources#ternjs#timeout = 1
""let g:deoplete#enable_yarp = 1
""let g:deoplete#enable_ignore_case = 1
""let g:deoplete#enable_smart_case = 1
""let g:deoplete#enable_camel_case = 1
""let g:deoplete#enable_refresh_always = 1
""let g:deoplete#max_abbr_width = 0
""let g:deoplete#max_menu_width = 0
""let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
""Add extra filetypes
"let g:deoplete#sources#ternjs#filetypes = [
"                \ 'tsx',
"                \ 'js',
"                \ 'jsx',
"                \ 'javascript.jsx',
"                \ 'vue' ]
"
"let g:tern_request_timeout = 1
"let g:tern#command = ["tern"]
"let g:tern#arguments = ["--persistent"]
"set runtimepath+=~/.config/nvim/plugged/deoplete.nvim/
"
"Plug 'ludovicchabant/vim-gutentags'
"
"Plug 'neomake/neomake', { 'on': 'Neomake' }
"let g:neomake_javascript_enabled_makers = ['eslint']


"Plug 'neoclide/coc.nvim'
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
Plug 'mattn/emmet-vim'
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"let g:user_emmet_leader_key='<C-Y>'
let g:user_emmet_settings = {
\   'html' : {
\     'indentation' : '  '
\   }
\}

Plug 'ptzz/lf.vim'
let g:lf_map_keys = 0
" dependency for LF
Plug 'rbgrouleff/bclose.vim'


Plug 'tpope/vim-fugitive'
map <C-a> :Git blame<CR>
