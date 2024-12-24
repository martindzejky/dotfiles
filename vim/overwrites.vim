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

" try to inherit colors from the terminal
hi Normal guibg=NONE ctermbg=NONE

" set the background color based on OS theme, which is unnecessarily
" difficult still...
" see: https://www.alecjacobson.com/weblog/4885.html
let s:sys = system("defaults read -g AppleInterfaceStyle 2&>/dev/null")
if v:shell_error
    set background=light
else
    set background=dark
endif

