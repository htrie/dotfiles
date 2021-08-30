call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'psliwka/vim-smoothie' 
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'

call plug#end()

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set wrap breakindent
set encoding=utf-8
set number
set relativenumber
set title
set updatetime=300
set colorcolumn=100
set hidden
set nobackup
set nowritebackup
set cursorline

syntax on
filetype on
colorscheme gruvbox

let mapleader=","
let g:gruvbox_contrast_dark = 'medium'

nmap <leader>r :source ~/.config/nvim/init.vim<CR>
nmap <leader>v :tabnew ~/.config/nvim/init.vim<CR>
nmap <leader>t :tabnew<CR>
nmap <leader>f :Files<CR>
nmap <leader>s :w<CR>
nmap <leader>w :close<CR>
nmap <leader>q :q!<CR>
nmap <leader>n :noh<CR>

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
