execute pathogen#infect()

syntax on
colorscheme solarized 
set t_Co=256
set background=dark
filetype plugin indent on
set nu
set tabstop=4
set nu	
syntax enable

set backspace=indent,eol,start

" Tabspacing
filetype plugin indent on
set tabstop=4 "set tab space equal to four spaces
set shiftwidth=4
set expandtab
set noswapfile
set ignorecase
set smartcase
set nowrap

" Enable code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" NERDTree Configuration
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['tmp']
let NERDTreeQuitOnOpen=1
let NERDTreeShowFiles=1

" NERDTreeToggle
nnoremap <F2> :NERDTreeToggle<CR>

" split key remaps
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Highlight column and row.
set cursorline
set cursorcolumn

" Visual mode search for highlighted text.
vnoremap // y/<C-R>"<CR>

