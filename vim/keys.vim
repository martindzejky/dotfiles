" Configure my key bindings.

" leader keys
let g:mapleader="\<Space>"

" disable q: and Q because I always press them
" by mistake and I never actually use them
map q: <Nop>
nnoremap Q <Nop>

" amazing shortcuts
nnoremap <silent> <Leader><Leader> :Commands<CR>
nnoremap <silent> <Leader>? :Helptags<CR>

" quick save-all-and-quit shortcut
nnoremap <silent> <Leader>Q :wqa<CR>

" window-handling keybindings
nnoremap <silent> <Leader>wc <C-w>c
nnoremap <silent> <Leader>wo <C-w>o
nnoremap <silent> <Leader>wh <C-w>s

" file-specific keybindings
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>fg :GFiles?<CR>
nnoremap <silent> <Leader>fw :write<CR>

" dotfile specific
nnoremap <silent> <Leader>fde :edit $MYVIMRC<CR>
nnoremap <silent> <Leader>fdr :source $MYVIMRC<CR>

" jumping around the file using vim-easymotion plugin
nmap ;; <Plug>(easymotion-bd-fn)
nmap ;l <Plug>(easymotion-bd-jk)
nmap ;n <Plug>(easymotion-bd-n)
" inlude jumping to hunks
nmap ;H <Plug>(GitGutterPrevHunk)
nmap ;h <Plug>(GitGutterNextHunk)

" refactoring
" TODO: YCM is no longer used
nnoremap <silent> <Leader>rn :YcmCompleter RefactorRename<CR>
nnoremap <silent> <Leader>rf :YcmCompleter FitIt<CR>

" git
nnoremap <silent> <Leader>gaa :Git add --all<CR>
nnoremap <silent> <Leader>gbr :Git branch<CR>
nnoremap <silent> <Leader>gbl :Git blame<CR>
nnoremap <silent> <Leader>gco :Git commit<CR>
nnoremap <silent> <Leader>gce :Git checkout<CR>
nnoremap <silent> <Leader>gd :Git diff<CR>
nnoremap <silent> <Leader>gs :Git<CR>

nnoremap <silent> <Leader>ghp <Plug>(GitGutterPreviewHunk)
nnoremap <silent> <Leader>ghs <Plug>(GitGutterStageHunk)
nnoremap <silent> <Leader>ghu <Plug>(GitGutterUndoHunk)
nnoremap <silent> <Leader>ghf :GitGutterFold<CR>

" buffers
nnoremap <silent> <Leader>bb :Buffers<CR>
