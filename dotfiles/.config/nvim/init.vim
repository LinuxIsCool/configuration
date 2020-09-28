" Vim-plug initialization
let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.config/nvim/autoload/plug.vim')
if !filereadable(vim_plug_path)
    echo "Installing Vim-plug..."
    echo "" silent !mkdir -p ~/.config/nvim/autoload
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let vim_plug_just_installed = 1
endif

" manually load vim-plug the first time
if vim_plug_just_installed
    :execute 'source '.fnameescape(vim_plug_path)
    :PlugInstall
endif

" ============================================================================
" Active plugins
call plug#begin('~/.config/nvim/plugged')

" Now the actual plugins:
" rainbow brackets
Plug 'luochen1990/rainbow'

" Vim emoji
Plug 'junegunn/vim-emoji'

" quick commenter
Plug 'preservim/nerdcommenter'

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Override configs by directory
Plug 'arielrossanigo/dir-configs-override.vim'

" Better file browser
Plug 'scrooloose/nerdtree'

" Class/module browser
Plug 'majutsushi/tagbar'
" TODO known problems:
" * current block not refreshing'

" Search results counter
Plug 'vim-scripts/IndexedSearch'

" Plugin for live preview of LaTex
Plug 'donRaphaco/neotex', {'for': 'tex'}

" Integrated Floating terminal
Plug 'voldikss/vim-floaterm'

" Lightline
Plug 'itchyny/lightline.vim'

" Code and files fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 

" Pending tasks list
Plug 'fisadev/FixedTaskList.vim'

" Completion from other opened files
Plug 'Shougo/context_filetype.vim'

" Automatically close parenthesis, etc
Plug 'Townk/vim-autoclose'

" Indent text object
Plug 'michaeljsmith/vim-indent-object'

" Indentation based movements
Plug 'jeetsukumaran/vim-indentwise'

" Better language packs
Plug 'sheerun/vim-polyglot'

" Ack code search (requires ack installed in the system)
Plug 'mileszs/ack.vim'
" TODO is there a way to prevent the progress which hides the editor?

" Paint css colors with the real color
Plug 'lilydjwg/colorizer'
" TODO is there a better option for neovim?

" Generate html in a simple way
Plug 'mattn/emmet-vim'

" Git integration
Plug 'tpope/vim-fugitive'

" Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'

" Linters
Plug 'neomake/neomake'
" TODO is it running on save? or when?
" TODO not detecting errors, just style, is it using pylint?

" Nice icons: Need to install patched font for this to work
Plug 'ryanoasis/vim-devicons'

" add or override individual additional filetypes
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['mkv'] = 'ƛ'

" Show indention level through lines
Plug 'Yggdroot/indentLine'

" Distraction free programming
Plug 'junegunn/goyo.vim'

" Tell vim-plug we finished declaring plugins, so it can load them
call plug#end()

" ============================================================================
" Install plugins the first time vim runs
if vim_plug_just_installed
    echo "Installing Bundles, please ignore key map error messages"
    :PlugInstall
endif

" ============================================================================
" Vim settings and mappings

" remap default leader key to comma
let mapleader = ","
nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>vc :e $MYVIMRC<CR>


" Change Ctrl N mapping to Ctrl Space "
inoremap <C-space> <C-n>

"" Make vim scroll faster
set ttyfast
set mouse=a
set lazyredraw
set nu
set nowrap
set relativenumber
set encoding=UTF-8
" set tabline to not display full path
set guitablabel=%t


" Set tabs for certain file types
" for html and css js and vue
autocmd FileType html setlocal ts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sw=2 expandtab
autocmd FileType scss setlocal ts=2 sw=2 expandtab
autocmd FileType javascript setlocal ts=2 sw=2 expandtab
autocmd FileType json setlocal ts=4 sw=4 expandtab
autocmd FileType vue setlocal ts=2 sw=2 expandtab
" Set expand width to 2 for C/C++
autocmd FileType cpp setlocal ts=2 sw=2 expandtab
autocmd FileType c setlocal ts=2 sw=2 expandtab
" Set expand width to 2 for Shell scripts and perl
autocmd FileType sh setlocal ts=2 sw=2 expandtab
autocmd FileType zsh setlocal ts=2 sw=2 expandtab
autocmd FileType bash setlocal ts=2 sw=2 expandtab
autocmd FileType perl setlocal ts=2 sw=2 expandtab
" Set expand width to 2 for markdown
autocmd FileType md setlocal ts=2 sw=2 expandtab
autocmd FileType markdown setlocal ts=2 sw=2 expandtab

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P


" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" Recompile suckless programs. only for files that are config.h
autocmd BufWritePost config.h,config.def.h !sudo make install; make clean    

" Comile any latex document into pdf form
autocmd BufWritePost answers.tex !pdflatex answers.tex   

" Compile VIU markdown notes to pdf
autocmd BufWritePost notes.md !pandoc -s -o notes.pdf notes.md


" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" remove ugly vertical lines on window division
set fillchars+=vert:\ 

"" Color Scheme set up for Material ===============================
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" < https://github.com/neovim/neovim/wiki/Following-HEAD #20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" use 256 colors when possible
if (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256') || has('nvim')
    let &t_Co = 256
    syntax on
    set background=light
    colorscheme quantum
else
    colorscheme jellybeans
endif


" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest

" save as sudo
ca w!! w !sudo tee "%"

" tab navigation mappings
map tt :tabnew 
map <M-Right> :tabn<CR>
imap <M-Right> <ESC>:tabn<CR>
map <M-Left> :tabp<CR>
imap <M-Left> <ESC>:tabp<CR>


" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" clear search results
nnoremap <silent> // :noh<CR>

" clear empty spaces at the end of lines on save of python files
"autocmd BufWritePre *.py :%s/\s\+$//e

" fix problems with uncommon shells (fish, xonsh) and plugins running commands
" (neomake, ...)
set shell=$SHELL

" Ability to add python breakpoints
" (I use ipdb, but you can change it to whatever tool you use for debugging)
au FileType python map <silent> <leader>b Oimport ipdb; ipdb.set_trace()<esc>

" ============================================================================
" Plugins settings and mappings
" Edit them as you wish.

" Tagbar -----------------------------
" toggle tagbar display
nmap <leader>tb :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" NERDTree -----------------------------
" toggle nerdtree display
map <leader>nn :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap <leader>nf :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" Tasklist ------------------------------
" show pending tasks list
map <leader>tl :TaskList<CR>

" Neomake ------------------------------
" Run linter on write
autocmd! BufWritePost * Neomake

" Check code as python3 by default
let g:neomake_python_python_maker = neomake#makers#ft#python#python()
let g:neomake_python_flake8_maker = neomake#makers#ft#python#flake8()
let g:neomake_python_python_maker.exe = 'python3 -m py_compile'
let g:neomake_python_flake8_maker.exe = 'python3 -m flake8'

" Disable error messages inside the buffer, next to the problematic line
let g:neomake_virtualtext_current_error = 1


" Fzf ------------------------------
" file finder mapping
nmap <leader>e :Files<CR>
" tags (symbols) in current file finder mapping
nmap <leader>g :BTag<CR>
" tags (symbols) in all files finder mapping
nmap <leader>G :Tags<CR>
" general code finder in current file mapping
nmap <leader>f :BLines<CR>
" general code finder in all files mapping
nmap <leader>F :Lines<CR>
" commands finder mapping
nmap <leader>c :Commands<CR>


" Signify ------------------------------
" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
let g:signify_vcs_list = [ 'git', 'hg' ]
" mappings to jump to changed blocks
nmap <leader>sn <plug>(signify-next-hunk)
nmap <leader>sp <plug>(signify-prev-hunk)

" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" Autoclose ------------------------------
" Fix to let ESC work as espected with Autoclose plugin
" (without this, when showing an autocompletion window, ESC won't leave insert
"  mode)

let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}
let g:AutoClosePairs = "() {} [] ' ` \" "

" This is solves a bug in devicons that appears when sourcing vimrc
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

" Include user's custom nvim configurations
if filereadable(expand("~/.config/nvim/custom.vim"))
  source ~/.config/nvim/custom.vim
endif
