" SETTINGS for the IDEAVIM plugin in WEBSTORM
" The goal is to keep this as close to my neovim configuration
" as possible (and vice versa).
" https://github.com/JetBrains/ideavim


" leader key
" https://youtrack.jetbrains.com/issue/VIM-1132
let mapleader=" "


" enable emulated ideavim plugins
" https://github.com/JetBrains/ideavim/wiki/IdeaVim-Plugins
set easymotion
set surround
set highlightedyank
set sneak
set multiple-cursors
set nerdtree
set commentary
set argtextobj
set exchange
set textobj-entire
set vim-paragraph-motion
set matchit
set which-key


" settings
set ideajoin " join lines using IDE's magic
set ideamarks " sync vim's marks and IDE's bookmarks
set idearefactormode visual " refactor mode

set showmode
set showcmd

set scrolloff = 16 " how many lines to keep visible around the cursor
set sidescrolloff = 32
set number
set relativenumber
set visualbell
set notimeout

set incsearch " incremental searching
set hlsearch " highlight search results
set ignorecase
set smartcase


" disable default easymotion key mappings
let g:EasyMotion_do_mapping=0

" remap conflicting keymaps for multiple-cursors plugin
map <C-N> <A-N>
map <C-P> <A-P>
map <C-X> <A-X>
map g<C-N> g<A-N>


" quick save-all-and-quit shortcut
nmap <silent> <Leader>Q <Action>(SaveAll)

" disable q: and Q because I always press them
" by mistake and I never actually use them
map q: <Nop>
nmap Q <Nop>

" shortcuts to jump to the start and end
nmap H ^
nmap L $

" redo
map U <C-r>


" action menus
nmap <silent> <Leader><Leader> <Action>(GotoAction)
nmap <silent> <Leader>am <Action>(ShowIntentionActions)
nmap <silent> <Leader>as <Action>(SearchEverywhere)

" window-handling keybindings
nmap <silent> <Leader>wc <C-w>c
nmap <silent> <Leader>wo <C-w>o
nmap <silent> <Leader>ws <Action>(SplitHorizontally)
nmap <silent> <Leader>wv <Action>(SplitVertically)
nmap <silent> <Leader>wx <Action>(ChangeSplitOrientation)

nnoremap <silent> <A-h> <C-w>h
nnoremap <silent> <A-l> <C-w>l
nnoremap <silent> <A-k> <C-w>k
nnoremap <silent> <A-j> <C-w>j

" file-specific keybindings
nmap <silent> <Leader>ff <Action>(GotoFile)
nmap <silent> <Leader>fs <Action>(SaveAll)

" projects
nmap <silent> <Leader>pp <Action>(RecentProjectListGroup)
nmap <silent> <Leader>pt :NERDTree<CR>
nmap <silent> <Leader>pf :NERDTreeFind<CR>

" refactoring
map <silent> <Leader>rr <Action>(Refactorings.QuickListPopupAction)
map <silent> <Leader>rn <Action>(RenameElement)
map <silent> <Leader>rv <Action>(IntroduceVariable)
map <silent> <Leader>rm <Action>(ExtractMethod)

" go to code
nmap <silent> <Leader>gd <Action>(GotoDeclaration)
nmap <silent> <Leader>gy <Action>(GotoTypeDeclaration)
nmap <silent> <Leader>gi <Action>(GotoImplementation)
nmap <silent> <Leader>gu <Action>(ShowUsages)
nmap <silent> <Leader>gt <Action>(GotoTest)
nmap <silent> <Leader>gb <Action>(Back)
nmap <silent> <Leader>gf <Action>(Forward)

" clear search highlight
nmap <silent> <Leader>sc :noh<CR>

" opened files
nmap <silent> <Leader>e <Action>(RecentFiles)
nmap <silent> <Leader>E <Action>(RecentLocations)
nmap <silent> <Leader><Tab> <Action>(Switcher)

" git
" TODO

" jumping around the file using vim-easymotion plugin
nmap ;; <Plug>(easymotion-bd-fn)
nmap ;l <Plug>(easymotion-bd-jk)
nmap ;n <Plug>(easymotion-bd-n)

" easy visual indentation
vnoremap < <gv
vnoremap > >gv

" popup navigation
inoremap <C-j> <Action>(PopupMenu-selectNext)
inoremap <C-k> <Action>(PopupMenu-selectPrev)


