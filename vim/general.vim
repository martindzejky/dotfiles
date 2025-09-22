" Contains general settings to configure sensible
" defaults for Neovim and my personal preferences.
" The following settings are copied from somewhere and
" are the default "sane" things to have in vimrc
" (I guess)

" break line only on certain characters
set linebreak

" enable line numbers
set number

" decrease update time to have git markings appear faster
set updatetime=100

" always show the signcolumn
set signcolumn=yes

" diff options for displaying vim diff
set diffopt=filler,iwhite,iwhiteeol,vertical,internal

" indentation
set expandtab
set shiftwidth=2

" file autocomplete with subfolders
set path+=**
