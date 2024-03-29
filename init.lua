--Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

--Compile Packer on save
vim.api.nvim_exec(
  [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]],
  false
)

--Plugins
local use = require('packer').use
require('packer').startup(function()
  use 'psliwka/vim-smoothie'
  use 'wbthomason/packer.nvim'
  use 'ludovicchabant/vim-gutentags'
  use 'morhetz/gruvbox'
  use 'itchyny/lightline.vim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'tree-sitter/tree-sitter-cpp'
  use 'neovim/nvim-lspconfig'
end)

--Split
vim.g.splitleft = true
vim.g.splitbottom = true

--Swap
vim.o.swapfile = false

--Tabs
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

--Incremental live completion (note: this is now a default on master)
vim.o.inccommand = 'nosplit'

--Set highlight on search
vim.o.hlsearch = true

--Make line numbers default
vim.wo.relativenumber = true
vim.wo.number = true

--Do not save when switching buffers (note: this is now a default on master)
vim.o.hidden = true

--Enable mouse mode
vim.o.mouse = 'a'

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.opt.undofile = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

--Set colorscheme (order is important here)
vim.o.termguicolors = true
vim.g.gruvbox_contrast_dark = "hard"
vim.cmd [[colorscheme gruvbox]]

--Set statusbar
vim.g.lightline = {
  colorscheme = 'gruvbox',
  active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
  component_function = { gitbranch = 'fugitive#head' },
}

--Remap leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Highlight on yank
vim.api.nvim_exec(
  [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]],
  false
)

-- Y yank until the end of line  (note: this is now a default on master)
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })

--Remap esc
vim.api.nvim_set_keymap("i", "jj", "<esc>", {noremap = true})

--Move accross display lines not real lines
vim.api.nvim_set_keymap("n", "k", "gk", {noremap = true})
vim.api.nvim_set_keymap("n", "gk", "k", {noremap = true})
vim.api.nvim_set_keymap("n", "j", "gj", {noremap = true})
vim.api.nvim_set_keymap("n", "gj", "j", {noremap = true})

--Center screen 
vim.api.nvim_set_keymap("n", "n", "nzz", {noremap = true})
vim.api.nvim_set_keymap("n", "N", "Nzz", {noremap = true})
vim.api.nvim_set_keymap("n", "*", "*zz", {noremap = true})
vim.api.nvim_set_keymap("n", "#", "#zz", {noremap = true})
vim.api.nvim_set_keymap("n", "g*", "g*zz", {noremap = true})
vim.api.nvim_set_keymap("n", "g#", "g#zz", {noremap = true})

--Save
vim.api.nvim_set_keymap("n", "<leader>s", ":w<CR>", {noremap = true})

--Close
vim.api.nvim_set_keymap("n", "<leader>q", ":q!<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>w", ":close<CR>", {noremap = true})

--Todo
vim.api.nvim_set_keymap("n", "<leader>to", ":14sp /mnt/c/Users/simd/OneDrive/Documents/todo.diff<CR>", {noremap = true})

--Terminal
vim.api.nvim_set_keymap("n", "<leader>tr", ":60vs|terminal<CR>", {noremap = true})
vim.api.nvim_set_keymap("t", "jj", "<C-\\><C-n>", {noremap = true})

--Windows
vim.api.nvim_set_keymap("n", "<leader>h", "<C-W><C-h>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>j", "<C-W><C-j>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>k", "<C-W><C-k>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>l", "<C-W><C-l>", {noremap = true})
vim.api.nvim_set_keymap("t", "<leader>h", "<C-W><C-h>", {noremap = true})
vim.api.nvim_set_keymap("t", "<leader>j", "<C-W><C-j>", {noremap = true})
vim.api.nvim_set_keymap("t", "<leader>k", "<C-W><C-k>", {noremap = true})
vim.api.nvim_set_keymap("t", "<leader>l", "<C-W><C-l>", {noremap = true})

--Hightlighting
vim.api.nvim_set_keymap("n", "<leader>n", ":noh<CR>", {noremap = true})

--Config
vim.api.nvim_set_keymap("n", "<leader>ev", ":vs $MYVIMRC<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>sv", ":luafile $MYVIMRC<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>cv", ":! cp ~/.config/nvim/init.lua /mnt/c/Users/simd/OneDrive/Documents/init.lua<CR><CR>", {noremap = true})

-- Treesitter configuration
-- Parsers must be installed manually via :TSInstall
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true, -- false will disable the whole extension
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'grn',
      scope_incremental = 'grc',
      node_decremental = 'grm',
    },
  },
  indent = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
      },
    },
  },
}

