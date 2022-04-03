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
nnoremap <silent> <Leader>wc <C-w>c
nnoremap <silent> <Leader>wo <C-w>o
nnoremap <silent> <Leader>wh <C-w>s

" file-specific keybindings
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>fg :GFiles?<CR>
nnoremap <silent> <Leader>fw :write<CR>
nnoremap <silent> <Leader>fa :wall<CR>

" project-specific keybindings
nnoremap <silent> <Leader>pt :NERDTree<CR>
nnoremap <silent> <Leader>pf :NERDTreeFind<CR>

" dotfile specific
nnoremap <silent> <Leader>fde :edit $MYVIMRC<CR>
nnoremap <silent> <Leader>fdr :source $MYVIMRC<CR>
nnoremap <silent> <Leader>fdi :PlugInstall<CR>
nnoremap <silent> <Leader>fdu :PlugUpdate<CR>

" jumping around the file using vim-easymotion plugin
nmap ;; <Plug>(easymotion-bd-fn)
nmap ;l <Plug>(easymotion-bd-jk)
nmap ;n <Plug>(easymotion-bd-n)

" commenting
nnoremap <silent> <LocalLeader>c :call NERDComment('n', 'toggle')<CR>
xnoremap <silent> <LocalLeader>c :call NERDComment('x', 'toggle')<CR>

" git
nnoremap <silent> <Leader>gaa :Git add --all<CR>
nnoremap <silent> <Leader>gbr :Git branch<CR>
nnoremap <silent> <Leader>gbl :Git blame<CR>
nnoremap <silent> <Leader>gco :Git commit<CR>
nnoremap <silent> <Leader>gd :Gdiffsplit<CR>
nnoremap <silent> <Leader>gl :Commits!<CR>
nnoremap <silent> <Leader>gs :Git<CR>
nnoremap <silent> <Leader>gg :Git<CR>

nnoremap <silent> <Leader>ghp <Plug>(GitGutterPreviewHunk)
nnoremap <silent> <Leader>ghs <Plug>(GitGutterStageHunk)
nnoremap <silent> <Leader>ghu <Plug>(GitGutterUndoHunk)
nnoremap <silent> <Leader>ghf :GitGutterFold<CR>

" buffers
nnoremap <silent> <Leader>b :Buffers<CR>

" searching
nnoremap          <LocalLeader>/ /
nnoremap <silent> <Leader>/ :Ag<CR>

