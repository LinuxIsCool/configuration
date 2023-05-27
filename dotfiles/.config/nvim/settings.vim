" ------------------------------------------------------------------------------
"  Neoconfig by Shawn Anderson starting September 30 2020

set cursorline
set autoread

" ignores case of letters on searches
set ignorecase      

" Override the 'ignorecase' option if the search pattern contains upper case characters
set smartcase       

"  Follow the open file 
set autochdir

"  Don't produce swap files
set noswapfile

"  Something about tags... going to get away from tags.
"set tags=tags

" Make vim scroll faster
set ttyfast " Removed in Nvim "

" Finish updates before redrawing screen
set lazyredraw

" Mouse support All
set mouse=a

" Line Numbers
set number

" Relative line numbers
set relativenumber!

" No line wrap
set nowrap

" Encoding
set encoding=UTF-8

" set tabline to (not) display full path
" set guitablabel=%F " Set to remove

" Always display tabline
set showtabline=2

" Tabs and spaces handling
set expandtab " Uses spaces instead of tabs
set tabstop=4 " Number of spaces per tab "
set softtabstop=4
set shiftwidth=4


" Windowing Splitting
" Remove ugly vertical lines on window division
set fillchars+=vert:\ 

" Autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" fix problems with uncommon shells (fish, xonsh) and plugins running commands
" (neomake, ...)
set shell=$SHELL

" save as sudo
ca w!! w !sudo tee "%"


