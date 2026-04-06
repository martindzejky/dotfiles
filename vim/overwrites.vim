" Override shared defaults after plugins are loaded.
"
" Because the plugin vim-better-defaults would be by default loaded after my
" vimrc and overwrite all of my settings.
" https://github.com/liuchengxu/vim-better-default#how-to-override-the-existing-settings
"
" Note that some env-specific overrides are in the `terminal.vim` and `cursor.vim` files.

" importing in neovim
runtime! plugin/default.vim

" do not put everything into clipboard please
" I cannot get used to it!
set clipboard-=unnamed
set clipboard-=unnamedplus
