" just copy-pasted from `:help nvim-from-vim`
" it should use my existing vim configuration
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" --- PLUGINS ---

" automagically install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

" --- COLORS ---

" use solarized8 color scheme (the flat variant looked better)
colorscheme solarized8_flat

" --- COC AUTOCOMPLETE ---

" use tab to trigger coc completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" use ctrl+space to trigger coc completion
inoremap <silent><expr> <c-space> coc#refresh()

" use enter to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

