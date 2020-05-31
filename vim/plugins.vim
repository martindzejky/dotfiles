" Following is a list of plugins and their respective configurations.
" `vim-plug` is used to manage the plugins. Its configuration is the first below.

" automagically install vim-plug
" TODO: check whether this is correct for neovim, too
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" open vim-plug windows on the bottom
let g:plug_window='botright 10new'

" start listing the plugins
call plug#begin('~/.vim/plugged')

" BASICS

" Contains many useful defaults for Vim. Some of the options are overwritten
" at the bottom of this file.
Plug 'liuchengxu/vim-better-default'

" Colors <3
" TODO: switch to https://github.com/overcache/NeoSolarized
Plug 'altercation/vim-colors-solarized'

" Makes Vim handle all kinds of languages. Installs required plugins if a
" specific file type is opened.
Plug 'sheerun/vim-polyglot'

" AIRLINE
" Adds a nice status bar to the bottom.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Use the solarized colors for airline.
let g:airline_theme='solarized'

" CURSORS & NAVIGATION

" Easymotion plugin allows some fine navigation around the files.
" Mapped to `"` leader key.
Plug 'easymotion/vim-easymotion'

" tell easemotion to ignore case
let g:EasyMotion_smartcase=1
let g:EasyMotion_do_mapping=0

" Allows the use of multiple cursors.
Plug 'terryma/vim-multiple-cursors'

" GIT
" Git integrations, not much to be said here.
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" FZF
" Fuzzy search all the things! This plugin allows to fuzzy-search files, help
" files, commands, buffers, etc. I am probably using only 10% of it.
" TODO: set up keymaps for commands and customize options
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" use ag for the ack.vim plugin
let g:ackprg = 'ag --vimgrep'

" WHICH KEY
" Useful plugin for helping me remember my key bindings.
Plug 'liuchengxu/vim-which-key'

" display help after 1000ms
set timeoutlen=1000

" for what keys to display help
nnoremap <silent> <Leader> :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <LocalLeader> :<c-u>WhichKey ','<CR>

" COMPLETION
" Modern completion engine.
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Better support for .jsonc files which are used by coc.nvim plugin.
" https://github.com/neoclide/coc.nvim/wiki/Using-the-configuration-file
autocmd FileType json syntax match Comment +\/\/.\+$+

" end the list of plugins
call plug#end()

