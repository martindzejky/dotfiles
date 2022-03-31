" Following is a list of plugins and their respective configurations.
" `vim-plug` is used to manage the plugins. Its configuration is the first below.

" open vim-plug windows on the bottom
let g:plug_window='botright 10new'

" start listing the plugins
call plug#begin(stdpath('data') . '/plugged')

" BASICS

" Contains many useful defaults for Vim. Some of the options are overwritten
" in `overwrites.vim` file.
Plug 'liuchengxu/vim-better-default'

" Colors <3
Plug 'overcache/NeoSolarized'

" Makes Vim handle all kinds of languages. Installs required plugins if a
" specific file type is opened.
Plug 'sheerun/vim-polyglot'

" Support for .editorconfig.
Plug 'editorconfig/editorconfig-vim'

" AIRLINE
" Adds a nice status bar to the bottom.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Use the solarized colors for airline.
let g:airline_theme='solarized'

" Utilize the font.
let g:airline_powerline_fonts = 1

" NERDTREE
" Nice file explorer sidebar.
Plug 'preservim/nerdtree'

" NERDCOMMENTER
" Quickly comment and un-comment lines.
Plug 'preservim/nerdcommenter'

" Disable the default key mappings.
let g:NERDCreateDefaultMappings = 0

" Add a space after the comment delimeters.
let g:NERDSpaceDelims = 1

" CURSORS & NAVIGATION

" Easymotion plugin allows some fine navigation around the files.
" Mapped to `"` leader key.
Plug 'easymotion/vim-easymotion'

" tell easemotion to ignore case
let g:EasyMotion_smartcase=1
let g:EasyMotion_do_mapping=0

" Allows the use of multiple cursors.
" TODO: learn to use and set up keys
Plug 'mg979/vim-visual-multi'

" GIT
" Git integrations, not much to be said here.
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" FZF
" Fuzzy search all the things! This plugin allows to fuzzy-search files, help
" files, commands, buffers, etc. I am probably using only 10% of it.
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" use ag for the ack.vim plugin
let g:ackprg = 'ag --vimgrep'

" GODOT
" Godot engine-related plugins to make Vim work with it.
Plug 'habamax/vim-godot'

" DEVICONS
" Adds cool filetype icons. Must be the last plugin.
Plug 'ryanoasis/vim-devicons'

" end the list of plugins
call plug#end()

