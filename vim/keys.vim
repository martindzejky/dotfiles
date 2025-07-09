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


if exists('g:vscode')
  " cursor / vs code specific keybindings

  " folds
  nmap <silent> zM <Cmd>call v:lua.require('vscode').call('editor.foldAll')<CR>
  nmap <silent> zR <Cmd>call v:lua.require('vscode').call('editor.unfoldAll')<CR>
  nmap <silent> zc <Cmd>call v:lua.require('vscode').call('editor.fold')<CR>
  nmap <silent> zC <Cmd>call v:lua.require('vscode').call('editor.foldRecursively')<CR>
  nmap <silent> zo <Cmd>call v:lua.require('vscode').call('editor.unfold')<CR>
  nmap <silent> zO <Cmd>call v:lua.require('vscode').call('editor.unfoldRecursively')<CR>
  nmap <silent> za <Cmd>call v:lua.require('vscode').call('editor.toggleFold')<CR>

  " window-handling keybindings
  nmap <silent> <Leader>wc <Cmd>call v:lua.require('vscode').call('workbench.action.closeActiveEditor')<CR>
  nmap <silent> <Leader>wo <Cmd>call v:lua.require('vscode').call('workbench.action.closeEditorsInOtherGroups')<CR>
  nmap <silent> <Leader>ws <Cmd>call v:lua.require('vscode').call('workbench.action.splitEditorDown')<CR>
  nmap <silent> <Leader>wv <Cmd>call v:lua.require('vscode').call('workbench.action.splitEditorRight')<CR>
  nmap <silent> <Leader>ww <Cmd>call v:lua.require('vscode').call('workbench.action.focusNextPart')<CR>

  " window navigation
  nmap <silent> <C-h> <Cmd>call v:lua.require('vscode').call('workbench.action.focusLeftGroup')<CR>
  nmap <silent> <C-j> <Cmd>call v:lua.require('vscode').call('workbench.action.focusBelowGroup')<CR>
  nmap <silent> <C-k> <Cmd>call v:lua.require('vscode').call('workbench.action.focusAboveGroup')<CR>
  nmap <silent> <C-l> <Cmd>call v:lua.require('vscode').call('workbench.action.focusRightGroup')<CR>
else
  " neovim only keybindings

  " window-handling keybindings
  nmap <silent> <Leader>wc <C-w>c " close window
  nmap <silent> <Leader>wo <C-w>o " only this window
  nmap <silent> <Leader>ws <C-w>s " split window below
  nmap <silent> <Leader>wv <C-w>v " split window right
  nmap <silent> <Leader>ww <C-w>w " switch window

  " window navigation
  nmap <silent> <C-h> <C-w>h
  nmap <silent> <C-j> <C-w>j
  nmap <silent> <C-k> <C-w>k
  nmap <silent> <C-l> <C-w>l
endif
