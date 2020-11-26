call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'psliwka/vim-smoothie' 
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'bfrg/vim-cpp-modern'

call plug#end()

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set wrap breakindent
set encoding=utf-8
set number
set relativenumber
set title
set colorcolumn=100
set hidden
set nobackup
set nowritebackup
set cursorline

let mapleader=","
let g:gruvbox_contrast_dark = 'hard'
let g:fzf_preview_window = []
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.4, 'yoffset': 1, 'border': 'horizontal' } }
let g:coc_diagnostic_disable = 1
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1

syntax on
filetype on
colorscheme gruvbox

nmap <leader>r :source ~/.config/nvim/init.vim<CR>
nmap <leader>v :tabnew ~/.config/nvim/init.vim<CR>
nmap <leader>t :tabnew<CR>
nmap <leader>f :Files<CR>
nmap <leader>s :w<CR>
nmap <leader>w :close<CR>
nmap <leader>q :wq<CR>
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

imap jk <Esc>
tmap jk <Esc>
vmap jk <Esc>
imap kj <Esc>
tmap kj <Esc>
vmap kj <Esc>
