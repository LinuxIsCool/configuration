" ------------------------------------------------------------------------------
"  Neoconfig by Shawn Anderson starting September 30 2020
set autochdir
set noswapfile
set tags=tags
"
" ------------------------------------------------------------------------------
"  These are inherited from MattCoding4Days
"" Make vim scroll faster
set ttyfast " Removed in Nvim "
set mouse=a
set lazyredraw
set nu
set nowrap
set relativenumber
set encoding=UTF-8
" set tabline to (not) display full path
set guitablabel=%F
set showtabline=2

" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" remove ugly vertical lines on window division
set fillchars+=vert:\ 

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3


" fix problems with uncommon shells (fish, xonsh) and plugins running commands
" (neomake, ...)
set shell=$SHELL

" save as sudo
ca w!! w !sudo tee "%"


