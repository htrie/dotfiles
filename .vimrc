
set incsearch smartcase hlsearch
set number
set relativenumber
set cursorline

let mapleader=","

nmap <leader>q :vsc Debug.StopDebugging<CR>
nmap <leader>r :vsc Edit.ReplaceinFiles<CR>
nmap <leader>t :vsc View.NavigateForward<CR>

nmap <leader>a :vsc Debug.Start<CR>
nmap <leader>s :w<CR>
nmap <leader>d :vsc Edit.GoToDefinition<CR>
nmap <leader>f :vsc Edit.FindinFiles<CR>
nmap <leader>g :vsc View.NavigateBackward<CR>
nmap <leader>h :vsc EditorContextMenus.CodeWindow.ToggleHeaderCodeFile<CR>
nmap <leader>j :vsc Edit.GoToAll<CR>

nmap <leader>z :vsc Build.Cancel<CR>
nmap <leader>c :vsc Build.Compile<CR>
nmap <leader>b :vsc Build.BuildSolution<CR>
nmap <leader>n :noh<CR>

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

