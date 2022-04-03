" Contains general settings to configure sensible
" defaults for Vim and my personal preferences.

" https://github.com/changemewtf/no_plugins
" file autocomplete with subfolders
set path+=**
set wildmenu

" tweaks for the file browser
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

" the following settings are copied from somewhere and
" are the default "sane" things to have in vimrc
" (I guess)

" break line only on certain characters
set linebreak

" enable line numbers and use relative numbering - really helpful in vim!
set number
set relativenumber

" show the typed commands in the status line
set showcmd

" real men use true color support
set termguicolors

" decrease update time to have git markings appear faster
set updatetime=100

" always show the signcolumn
set signcolumn=yes

" diff options for displaying vim diff
set diffopt=filler,iwhite,iwhiteeol,vertical,internal

" indentation
set expandtab
set shiftwidth=4

