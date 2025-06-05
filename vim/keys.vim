" Configure my key bindings.

let g:mapleader="\<Space>"

" disable q: and Q because I always press them
" by mistake and I never actually use them
map q: <Nop>
nnoremap Q <Nop>

" start and end of line
nnoremap H ^
nnoremap L $

" redo
nnoremap U <C-r>

" leap
map s <Plug>(leap)
nmap S <Plug>(leap-from-window)

" window-handling keybindings
nmap <silent> <Leader>wc <C-w>c " close window
nmap <silent> <Leader>wo <C-w>o " only this window
nmap <silent> <Leader>ws <C-w>s " split window below
nmap <silent> <Leader>wv <C-w>v " split window right
nmap <silent> <Leader>ww <C-w>w " switch window

" commands
nmap <silent> <Leader><Leader> <Cmd>call v:lua.require('vscode').call('workbench.action.showCommands')<CR>
nmap <silent> <Leader>f <Cmd>call v:lua.require('vscode').call('workbench.action.quickOpen')<CR>
