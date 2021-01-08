
set incsearch smartcase hlsearch
set number
set relativenumber
set cursorline

let mapleader=","

nmap <leader>q :vsc Debug.StopDebugging<CR>
nmap <leader>w :close<CR>
nmap <leader>e <Esc>
imap <leader>e <Esc>
vmap <leader>e <Esc>
nmap <leader>r :vsc Edit.Redo<CR>
nmap <leader>t :vsc View.NavigateForward<CR>

nmap <leader>a :vsc Debug.Start<CR>
nmap <leader>s :w<CR>
nmap <leader>d :vsc Edit.GoToDefinition<CR>
nmap <leader>f :vsc Edit.GoToAll<CR>
nmap <leader>g :vsc View.NavigateBackward<CR>
nmap <leader>h :vsc EditorContextMenus.CodeWindow.ToggleHeaderCodeFile<CR>
nmap <leader>j :vsc Tools.InvokeAceJumpCommand<CR>

nmap <leader>z :vsc Build.Cancel<CR>
"x
nmap <leader>c :vsc Build.Compile<CR>
"v
nmap <leader>b :vsc Build.BuildSolution<CR>
nmap <leader>n :noh<CR>

nnoremap E $
nnoremap B ^