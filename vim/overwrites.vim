" Because the plugin vim-better-defaults would be by default loaded after my
" vimrc and overwrite all of my settings.
" https://github.com/liuchengxu/vim-better-default#how-to-override-the-existing-settings

" importing in neovim
runtime! plugin/default.vim

" use solarized colors <3
colorscheme NeoSolarized

" do not put everything into clipboard please
" I cannot get used to it!
set clipboard-=unnamed
set clipboard-=unnamedplus

" unmap <CR>
nunmap <CR>

" quick save-all-and-quit shortcut
nnoremap <silent> <Leader>Q :wqa<CR>

" set background color always to dark
set background=dark


