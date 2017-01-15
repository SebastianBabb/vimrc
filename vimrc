execute pathogen#infect()

syntax on

" Color scheme
set t_Co=256 "Needed for terminal sessions.
set background=dark
colorscheme solarized

" Lightline
set laststatus=2

let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ }

filetype plugin indent on
" Show line numbers.
set nu

" Editor formating.
set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=80 " Limit line width to 80 chars.

" Syntax highlighting
syntax enable

" Syntactic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
"let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers = ['jshint']

" Tabspacing
filetype plugin indent on
set tabstop=4 "set tab space equal to four spaces
set shiftwidth=4
set expandtab
set noswapfile
set ignorecase
set smartcase
set nowrap

" NERDTree Configuration
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['tmp']
let NERDTreeQuitOnOpen=1
let NERDTreeShowFiles=1
" KEYMAPS
"
" NERDTreeToggle
nnoremap <F2> :NERDTreeToggle<CR>
" Requires file have execute permissions set.
"command R !./i%
nnoremap <F8> :w<CR> : ! ./%<CR>
" Web Dev Launch Browser keymaps
"nnoremap <F12> :!deploy-mvc.sh<CR> 
nnoremap <F12> :!python %<CR>

" Line folding 
set foldmethod=indent
set nofoldenable
nnoremap <Space> za

" Remap panel navigation.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" PHP 
autocmd FileType php setlocal makeprg=zca\ %<.php
autocmd FileType php setlocal errorformat=%f(line\ %l):\ %m
