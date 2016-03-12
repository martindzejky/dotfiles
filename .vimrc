" history size
set history=500

" enable filetype plugins
filetype plugin on
filetype indent on

" set to auto read when a file is changed from the outside
set autoread

" :W sudo saves the file using sudo
command W w !sudo tee % > /dev/null

" set 7 lines to the cursor
set so=20

" turn on the WiLd menu
set wildmenu

" ignore compiled files
set wildignore=*.o,*~,*.pyc,.git/*

" always show current position
set ruler

" height of the command bar
set cmdheight=2

" a buffer becomes hidden when it is abandoned
set hid

" configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" ignore case when searching
set ignorecase

" when searching try to be smart about cases 
set smartcase

" highlight search results
set hlsearch

" makes search act like search in modern browsers
set incsearch 

" for regular expressions turn magic on
set magic

" show matching brackets
set showmatch 

" blinking rate
set mat=2

" disable sound
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" add a bit extra margin to the left
set foldcolumn=1

" enable syntax
syntax enable 

" set color scheme
try
  colorscheme desert
catch
endtry

" set utf8 encoding
set encoding=utf8

" use unix file type
set ffs=unix

" turn of backup
set nobackup
set nowb
set noswapfile

" use spaces instead of tabs
set expandtab

" smart tabs
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai " auto indent
set si " smart indent
set wrap " wrap lines
