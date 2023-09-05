
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
call vundle#end()

call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'rust-lang/rust.vim'
call plug#end()

set fenc=utf-8
set nobackup
set noswapfile
set number
set cursorline
set virtualedit=onemore
set smartindent
set showmatch
syntax on
colorscheme nord
set laststatus=2
let g:lightline = { 'colorscheme': 'selenized_black' }

set mouse=a
set ttymouse=xterm2

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

set tabstop=4
set belloff=all

if has("autocmd")
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif

nmap <F1> :vert term ++close ipython
nmap <F4> :wq <CR>
nmap <F5> :w <CR>:vert term ++close python % <CR> <C-w>:vert resize 75 <CR> <C-w>:<CR>
nmap <F6> :w <CR>:vert term python % <CR> 
set splitright

filetype plugin indent on
let g:rustfmt_autosave = 1
