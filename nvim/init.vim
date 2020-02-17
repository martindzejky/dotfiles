" just copy-pasted from `:help nvim-from-vim`
" it should use my existing vim configuration
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" initialize vim-plug
call plug#begin(stdpath('data') . '/plugged')

" solarized colors with termguicolors support
Plug 'lifepillar/vim-solarized8'

" autocompletion
" TODO: configure this from the docs
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" real men use true color support
set termguicolors

" use solarized8 color scheme (the flat variant looked better)
colorscheme solarized8_flat

" rebind CTRL+P to open fzf
" TODO: can this be CMD+SHIFT+O?
nnoremap <C-p> :FZF<CR>

