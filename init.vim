"
" :%y+ to copy all lines to clipboard
" f<char> and ; ,
" use :tabnew and gt gT to create and navigate between tabs
" use .. instead of Esc
" use ,w and ,r to save file and source init.vim
"

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'psliwka/vim-smoothie' 
Plug 'vim-syntastic/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'

call plug#end()

syntax on
filetype on

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set wrap breakindent
set encoding=utf-8
set number
set relativenumber
set title
set updatetime=50
set colorcolumn=100
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set shortmess+=c

let mapleader=","
let g:gruvbox_contrast_dark = 'hard'
let g:fzf_preview_window = []
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.4, 'yoffset': 1, 'border': 'horizontal' } }
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1 

colorscheme gruvbox

nnoremap <CR> :noh<CR>
nmap <leader>r :source ~/.config/nvim/init.vim<CR>
nmap <leader>v :tabnew ~/.config/nvim/init.vim<CR>
nmap <leader>f :Files<CR>
nmap <leader>s :w<CR>
nmap <leader>w :close<CR>
nmap <leader>q :wq<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
imap ,, <Esc>
tmap ,, <Esc>

