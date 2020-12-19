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
" inlude jumping to hunks
nmap ;H <Plug>(GitGutterPrevHunk)
nmap ;h <Plug>(GitGutterNextHunk)
" include jumping to diagnostic information
nmap ;D <Plug>(coc-diagnostic-prev)
nmap ;d <Plug>(coc-diagnostic-next)

" navigation to definitions and references
nnoremap <silent> <LocalLeader>d <Plug>(coc-definition)
nnoremap <silent> <LocalLeader>i <Plug>(coc-implementation)
nnoremap <silent> <LocalLeader>u <Plug>(coc-references)

" refactoring
nnoremap <silent> <LocalLeader>rn <Plug>(coc-rename)

" git
nnoremap <silent> <Leader>gaa :Git add --all<CR>
nnoremap <silent> <Leader>gbr :Git branch<CR>
nnoremap <silent> <Leader>gbl :Git blame<CR>
nnoremap <silent> <Leader>gco :Git commit<CR>
nnoremap <silent> <Leader>gd :Gdiffsplit<CR>
nnoremap <silent> <Leader>gs :Git<CR>
nnoremap <silent> <Leader>gg :Git<CR>

nnoremap <silent> <Leader>ghp <Plug>(GitGutterPreviewHunk)
nnoremap <silent> <Leader>ghs <Plug>(GitGutterStageHunk)
nnoremap <silent> <Leader>ghu <Plug>(GitGutterUndoHunk)
nnoremap <silent> <Leader>ghf :GitGutterFold<CR>

" buffers
nnoremap <silent> <Leader>bb :Buffers<CR>

" inline help
nnoremap <silent> <LocalLeader>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

