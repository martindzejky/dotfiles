" Configure my key bindings.

" leader keys
let g:mapleader="\<Space>"
let g:maplocalleader=","

" disable q: and Q because I always press them
" by mistake and I never actually use them
map q: <Nop>
nnoremap Q <Nop>

" amazing shortcuts using fzf to search
" through all vim commands and help pages
nnoremap <silent> <Leader><Leader> :Commands<CR>
nnoremap <silent> <Leader>? :Helptags<CR>

" window-handling keybindings
nnoremap <silent> <Leader>wc <C-w>c " close window
nnoremap <silent> <Leader>wo <C-w>o " only this window
nnoremap <silent> <Leader>ws <C-w>s " split window below
nnoremap <silent> <Leader>wv <C-w>v " split window right
nnoremap <silent> <Leader>ww <C-w>w " switch window

" file-specific keybindings
nnoremap <silent> <Leader>ff :Files<CR>   " fuzzy find files
nnoremap <silent> <Leader>fg :GFiles?<CR> " fuzzy find git files
nnoremap <silent> <Leader>fs :wall<CR>    " save all

" project-specific keybindings
nnoremap <silent> <Leader>pt :NERDTree<CR>     " open file tree
nnoremap <silent> <Leader>pf :NERDTreeFind<CR> " open current file in file tree

" plugins
nnoremap <silent> <Leader>fdi :PlugInstall<CR>
nnoremap <silent> <Leader>fdu :PlugUpdate<CR>

" jumping around the file using vim-easymotion plugin
nmap ;; <Plug>(easymotion-bd-fn) " jump to word
nmap ;l <Plug>(easymotion-bd-jk) " jump to line
nmap ;n <Plug>(easymotion-bd-n)  " jump to search result (n/N)

" commenting
nnoremap <silent> <LocalLeader>c :call NERDComment('n', 'toggle')<CR>
xnoremap <silent> <LocalLeader>c :call NERDComment('x', 'toggle')<CR>

" git
nnoremap <silent> <Leader>gaa :Git add --all<CR>
nnoremap <silent> <Leader>gbr :Git branch<CR>
nnoremap <silent> <Leader>gbl :Git blame<CR>
nnoremap <silent> <Leader>gco :Git commit<CR>
nnoremap <silent> <Leader>gd  :Gdiffsplit<CR>
nnoremap <silent> <Leader>gl  :Commits!<CR>
nnoremap <silent> <Leader>gs  :Git<CR>
nnoremap <silent> <Leader>gg  :Git<CR>

nnoremap <silent> <Leader>ghp <Plug>(GitGutterPreviewHunk)
nnoremap <silent> <Leader>ghs <Plug>(GitGutterStageHunk)
nnoremap <silent> <Leader>ghu <Plug>(GitGutterUndoHunk)
nnoremap <silent> <Leader>ghf :GitGutterFold<CR>

" opened files
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>e :History<CR>

" searching
nnoremap <silent> <Leader>/ :Ag<CR>
