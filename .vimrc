" Load pathogen plugin
call pathogen#runtime_append_all_bundles() 

" Customize leader key
let mapleader = " "

" Display whitespaces
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" Speed up scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Set backup directory location
" Show trailing whitespaces
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" Multiple buffers
set hidden

" Syntax highlighting
syntax on

" Default color scheme
if has ('gui_running')
	set background=light
else
	set background=dark
endif
"colorscheme solarized

" Line numbers
set number

" Toggle line numbers and fold column for easy copying
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Start maximized
"if has("gui_running")
"	set lines=9999 columns=9999
"endif

" Filetype plugins
filetype plugin on

" Longer history
set history=1000

source ~/.vim/plugin/matchit.vim

" ===== Python =====

" Keep indentation correct (Useful for Python files)
filetype plugin indent on

" Python syntax script
autocmd FileType python set complete+=k~/.vim/syntax/python3.0.vim isk+=.,(

" Python tab completion
let g:pydiction_location = '~/.vim/vimfiles/ftplugin/pydiction/complete-dict'

" Hide gui components
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar

" NERDTree shortcut (c-l fixes artifact)
nmap <silent> <c-n> :NERDTreeToggle<CR><c-l>

" Always cd to directory of current file
function AlwaysCD()
  if bufname("") !~ "^ftp://"
    lcd %:p:h
  endif
endfunction
autocmd BufEnter * call AlwaysCD()

" Easy toggle between src and header file
map <C-Tab> :A<CR>
map <C-h> :AS<CR> 

" Set print magin 
if has("colorcolumn")
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Remove annoying delay
set timeoutlen=100

" Replace ESC with tab
"nnoremap <Tab> <Esc>
"vnoremap <Tab> <Esc>gV
"onoremap <Tab> <Esc>
"inoremap <Tab> <Esc>`^
"inoremap <Leader><Tab> <Tab>

