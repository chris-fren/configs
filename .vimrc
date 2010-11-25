" Customize leader key
let mapleader = ","

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
colorscheme eclipse

" Line numbers
set number

" Toggle line numbers and fold column for easy copying
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Start maximized
if has("gui_running")
	set lines=9999 columns=9999
endif

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
