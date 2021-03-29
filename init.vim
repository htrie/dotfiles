call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'psliwka/vim-smoothie' 
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'phaazon/hop.nvim'

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
set termguicolors

syntax on
filetype on
colorscheme gruvbox

let mapleader=","

nmap <leader>j :HopWord<CR>
nmap <leader>k :HopChar1<CR>
nmap <leader>l :HopLine<CR>
nmap <leader>r :source ~/.config/nvim/init.vim<CR>
nmap <leader>v :tabnew ~/.config/nvim/init.vim<CR>
nmap <leader>t :tabnew<CR>
nmap <leader>f :Files<CR>
nmap <leader>s :w<CR>
nmap <leader>w :close<CR>
nmap <leader>q :q!<CR>
nmap <leader>n :noh<CR>

tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
