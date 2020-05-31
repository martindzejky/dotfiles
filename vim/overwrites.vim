" Because the plugin vim-better-defaults would be by default loaded after my
" vimrc and overwrite all of my settings.
" https://github.com/liuchengxu/vim-better-default#how-to-override-the-existing-settings

" Previously I used "runtime! plugin/default.vim" as suggested in the link
" above. But, manually including this file like this makes it work for IdeaVim, too.
source ~/.vim/plugged/vim-better-default/plugin/default.vim

" use solarized colors <3
colorscheme solarized

" do not put everything into clipboard please
" I cannot get used to it!
set clipboard-=unnamed

" unmap <CR>
nunmap <CR>

" automatically switch between light and dark theme based on
" iTerm's theme (which is in turn based on OS)
if $ITERM_PROFILE == "Dark"
    set background=dark
else
    set background=light
endif

