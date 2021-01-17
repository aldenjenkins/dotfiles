
" Pasting{
"nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F8>
set showmode
" }

" Disable autocomment new lines below commented lines{
augroup myautocommentdisablehooks
    au!
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END
" }

" Leader - ( Spacebar )
let mapleader = "," 
" Enable folding with the spacebar
nnoremap "  " za

onoremap c c

" Compile document
	nnoremap <leader>c :w! \| !compiler <c-r>%<CR><CR>
        vnoremap <leader>c :%w ! compiler <c-r><CR><CR>


" Navigating with guides
"	"inoremap ;<Space> <Esc>/<++><Enter>"_c4l
"	"vnoremap ;<Space> <Esc>/<++><Enter>"_c4l
"	"nnoremap ;<Space> <Esc>/<++><Enter>"_c4l

"MARKDOWN
augroup mymarkdownhooks
  au!
	autocmd Filetype rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
	autocmd Filetype rmd inoremap ,n ---<Enter><Enter>
	autocmd Filetype rmd inoremap ,b ****<++><Esc>F*hi
	autocmd Filetype rmd inoremap ,s ~~~~<++><Esc>F~hi
	autocmd Filetype rmd inoremap ,e **<++><Esc>F*i
	autocmd Filetype rmd inoremap ,h ====<Space><++><Esc>F=hi
	autocmd Filetype rmd inoremap ,i ![](<++>)<++><Esc>F[a
	autocmd Filetype rmd inoremap ,a [](<++>)<++><Esc>F[a
	autocmd Filetype rmd inoremap ,1 #<Space><Enter><++><Esc><Up>A
	autocmd Filetype rmd inoremap ,2 ##<Space><Enter><++><Esc><Up>A
	autocmd Filetype rmd inoremap ,3 ###<Space><Enter><++><Esc><Up>A
	autocmd Filetype rmd inoremap ,l --------<Enter>
	autocmd Filetype rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO
	autocmd Filetype rmd inoremap <Tab> 6i&nbsp;<esc>l
augroup END


" nmap <silent>  ;v    :split ~/.vim/<CR>
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
"nnoremap l b|xnoremap l b|onoremap l b|
"nnoremap L B|xnoremap L B|onoremap L B|
"nnoremap u e|xnoremap u e|onoremap u e|
"nnoremap U E|xnoremap U E|onoremap U E|
"nnoremap y w|xnoremap y w|onoremap y w|
"nnoremap Y W|xnoremap Y W|onoremap Y W|
"cnoremap <C-L> <C-Left>
"cnoremap <C-Y> <C-Right>
" }}}
" inSert/Replace/append (T) {{{
nnoremap s i|
nnoremap S I|
"nnoremap t a|
"nnoremap T A|
" }}}
" Change {{{
"nnoremap w c|xnoremap w c|
"nnoremap W C|xnoremap W C|
"nnoremap ww cc|
" }}}
" Cut/copy/paste {{{
nnoremap x x|xnoremap x d|
"nnoremap c y|xnoremap c y|
"nnoremap v p|xnoremap v p|
nnoremap X dd|xnoremap X d|
"nnoremap C yy|xnoremap C y|
"nnoremap V P|xnoremap V P|
nnoremap gv gp|xnoremap gv gp|
nnoremap gV gP|xnoremap gV gP|

" }}}
" insert tab switch t and d for colemak
inoremap <C-t> <C-d>
inoremap <C-d> <C-t>
" Undo/redo {{{
"nnoremap z u|xnoremap z :<C-U>undo<CR>|
"nnoremap gz U|xnoremap gz :<C-U>undo<CR>|
"nnoremap Z <C-R>|xnoremap Z :<C-U>redo<CR>|
" }}}
" Visual mode {{{
"nnoremap a v|xnoremap a v|
"nnoremap A V|xnoremap A V|
nnoremap ga gv
" Make insert/add work also in visual line mode like in visual block mode
xnoremap <silent> <expr> s (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
xnoremap <silent> <expr> S (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
xnoremap <silent> <expr> t (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
xnoremap <silent> <expr> T (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
" }}}
" Search {{{
" f/F are unchanged
"nnoremap p t|xnoremap p t|onoremap p t|
"nnoremap P T|xnoremap P T|onoremap P T|
"nnoremap b ;|xnoremap b ;|onoremap b ;|
"nnoremap B ,|xnoremap B ,|onoremap B ,|
"nnoremap <C-i> gg|xnoremap <C-i> gg|onoremap <C-i> gg|
"nnoremap <C-e> G|xnoremap <C-e> G|onoremap <C-e> G|
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

" make searching better
nnoremap <silent> <leader>, :noh<cr> " Stop highlight after searching
set incsearch
set showmatch

" Display extra whitespace
"set list listchars=tab:»·,trail:·,nbsp:·
"set list listchars=tab:»·,trail:·,nbsp:·

"set wrapmargin=0
"set colorcolumn=+1


" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

"Use enter to create new lines w/o entering insert mode
nnoremap <CR> o<Esc>


" Navigate properly when lines are wrapped
"nnoremap e gj
"nnoremap i gk



" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
"if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
"      syntax on
"endif

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
"inoremap <silent> <C-S>         <C-O>:update<CR>
" Also map leader + s
map <leader>s <C-S>

"" Quickly close windows
"nnoremap <leader>x :x<cr>
"nnoremap <leader>X :q!<cr>

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" resize panes
nnoremap <silent> <C-Left> :vertical resize -5<cr>
nnoremap <silent> <C-Right> :vertical resize +5<cr>
nnoremap <silent> <C-Down> :resize +5<cr>
nnoremap <silent> <C-Up> :resize -5<cr>

"inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
"inoremap <S-Tab> <c-n>

" Switch between the last two files
"nnoremap <leader><leader> <c-^>

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

"------------------------------------------------------------
nnoremap k n
nnoremap K N


"====[ Show when lines extend past column 80 ]=================================>!<============
 
"set colorcolumn=120
highlight ColorColumn ctermbg=233
 highlight ColorColumn ctermfg=Black ctermbg=Green
 
 function! MarkMargin (on)
     if exists('b:MarkMargin')
         try
             call matchdelete(b:MarkMargin)
         catch /./
         endtry
         unlet b:MarkMargin
     endif
     if a:on
         let b:MarkMargin = matchadd('ColorColumn', '\%120v\s*\zs\S', 100)
     endif
 endfunction
 
 augroup MarkMargin
     autocmd!
     autocmd  BufEnter  *       :call MarkMargin(1)
     autocmd  BufEnter  *.vp*   :call MarkMargin(0)
 augroup END

" function! FindDjangoSettings2() "{
"     if strlen($VIRTUAL_ENV) && has('python')
"         let django_check = system("pip freeze | grep -q Django")
"         if v:shell_error
"             echo 'django not installed.'
"         else
"             echo 'django is installed.'
"             let output = system("find $VIRTUAL_ENV \\( -wholename '*/lib/*' -or -wholename '*/install/' \\) -or \\( -name 'settings.py' -print0 \\) | tr '\n' ' '")
"             let outarray= split(output, '[\/]\+')
"             let module = outarray[-2] . '.' . 'settings'
"             let syspath = system("python -c 'import sys; print sys.path' | tr '\n' ' ' ")
"             let curpath = '/' . join(outarray[:-2], '/')
"             execute 'python import sys, os'
"             execute 'python sys.path.append("' . curpath . '")'
"             execute 'python sys.path.append("' . syspath . '")'
"             execute 'python sys.path = ' . syspath
"             execute 'python os.environ.setdefault("DJANGO_SETTINGS_MODULE", "' . module . '")'
"         endif
"     endif
" endfunction "}

vnoremap  <leader>r :w ! python3<CR>
nnoremap  <leader>r :%w ! python3<CR>
vnoremap  <leader>t :w ! python3 -m timeit<CR>
nnoremap  <leader>t :%w ! python3 -m timeit<CR>
vnoremap  <leader>u :w ! python3  -m unittest -v<CR>
nnoremap  <leader>u :%w ! python3  -m unittest -v<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

nnoremap <leader>f :Lf<CR>
