" Following is a list of plugins and their respective configurations.
" `vim-plug` is used to manage the plugins. Its configuration is the first below.

" open vim-plug windows on the bottom
let g:plug_window='botright 10new'

" start listing the plugins
call plug#begin(stdpath('data') . '/plugged')

" BASICS

" Contains many useful defaults for Vim. Some of the options are overwritten
" at the bottom of this file.
Plug 'liuchengxu/vim-better-default'

" Colors <3
Plug 'overcache/NeoSolarized'

" Makes Vim handle all kinds of languages. Installs required plugins if a
" specific file type is opened.
Plug 'sheerun/vim-polyglot'

" AIRLINE
" Adds a nice status bar to the bottom.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NERDTREE
" Nice file explorer sidebar.
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

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
" Removed because it mostly did not work in neovim, I don't know why. If I
" later decide to use it again, use the git history on this file.

" COMPLETION
" Modern completion engine.
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Better support for .jsonc files which are used by coc.nvim plugin.
" https://github.com/neoclide/coc.nvim/wiki/Using-the-configuration-file
autocmd FileType json syntax match Comment +\/\/.\+$+

" Don't pass messages to |ins-completion-menu|. Recommended for coc.nvim.
set shortmess+=c

" Use CTRL+SPACE to trigger completion.
inoremap <silent><expr> <C-Space> coc#refresh()

" Use TAB to trigger completion.
inoremap <silent><expr> <Tab>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<Tab>" :
    \ coc#refresh()

" Use TAB and SHIFT+TAB to navigate completion.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use ENTER to confirm completion.
inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" COC EXTENSIONS
" https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#use-vims-plugin-manager-for-coc-extension
Plug 'iamcco/coc-vimlsp', {'do': 'yarn install --frozen-lockfile'}
Plug 'josa42/coc-go', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}

" end the list of plugins
call plug#end()

" UTILITIES

" Used by the coc.nvim configuration to handle TAB key.
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

