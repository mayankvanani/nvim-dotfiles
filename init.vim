call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
"Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'neomake/neomake'
Plug 'pseewald/vim-anyfold'

call plug#end()

colorscheme gruvbox
set background=dark
let g:airline_theme='tomorrow'

let mapleader = ","

vmap <leader>c <plug>NERDCommenterToggle
nmap <leader>c <plug>NERDCommenterToggle

set syntax=on
set mouse=a
set number
"set relativenumber
"set autoindent
set noswapfile
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set ignorecase
set ruler
set nohlsearch

let g:neomake_python_enabled_makers = ['flake8']

map <h> <left>
map <j> <down>
map <k> <up>
map <l> <right>

vmap <C-c> "+y

" for automatic code folding in a file
"autocmd Filetype * AnyFoldActivate

" used for navigating in autocomplete using 'j' and 'k' keys
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
