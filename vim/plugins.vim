" Following is a list of plugins and their respective configurations.
" `vim-plug` is used to manage the plugins. Its configuration is the first below.

" start listing the plugins
call plug#begin(stdpath('data') . '/plugged')

" BASICS

" Contains many useful defaults for Vim.
" Some of the options are overwritten in `overwrites.vim` file.
Plug 'liuchengxu/vim-better-default'

" Disable the default key mapping. Take a look here for inspiration:
" https://github.com/liuchengxu/vim-better-default/blob/fb2a35475fe94bf2476aaaff6b8f02b5b12cbdd6/plugin/default.vim#L192
let g:vim_better_default_key_mapping = 0

" These ones are disabled for Cursor / VS Code because they should not be needed.
if !exists('g:vscode')
  " Colors <3
  Plug 'overcache/NeoSolarized'

  " Makes Vim handle all kinds of languages.
  " I'm keeping this around so I can open any file in Neovim.
  Plug 'sheerun/vim-polyglot'

  " Support for .editorconfig.
  Plug 'editorconfig/editorconfig-vim'
endif

" Stuff from tpope. Repeat adds support for . in plugins.
" Commentary is for commenting stuff.
" Surround is for working with surrounding brackets, tags, etc.
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Adds entire buffer text objects.
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'

" More text objects like arguments and blocks.
Plug 'wellle/targets.vim'

" LEAP
" Allows to easily jump around the file.
Plug 'https://codeberg.org/andyg/leap.nvim'

" end the list of plugins
call plug#end()
