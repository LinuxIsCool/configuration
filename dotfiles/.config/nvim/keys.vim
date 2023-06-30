"------------------------------------------------------------------------------
" Use comma for leader
let mapleader = ","

"------------------------------------------------------------------------------
" Shawn Anderson as of September 30th 2020
noremap <leader>f 0
noremap <leader>j $

" Highlight search
map <leader>/ :nohl<CR>

" Faster scrolling with control
" noremap <C-j> jj
" noremap <C-k> kk

" Spookie bug. I think I was hacked and that someone i fucking with me. 
" Whenever I would pres shift K it would open a new tab in nvim.
" inoremap <S-k> <S-k>
" inoremap <S-j> <S-j>

" Here, I borrow some mappings from readline! These are great, google
" `readline cheatsheet` I map alt-a to home because I use ctr-a for tmux
" leader.
inoremap <C-b> <left>
inoremap <C-f> <right>
inoremap <C-e> <end>
inoremap <M-a> <home>
nnoremap <C-e> <end>
nnoremap <M-a> <home>



" Edit Vim Config File
nnoremap <leader>e :e $MYVIMRC<CR>
" Source Vim Config File
nnoremap <leader>r :source $MYVIMRC<CR>

" Save file
"nnoremap <leader>w :w<CR>

" Install Plugins
"nnoremap <leader>i :w<CR>:source $MYVIMRC<CR>:PlugInstall<CR>

" Nerd Tree!!! (I think)
" Change Ctrl N mapping to Ctrl Space "
inoremap <C-space> <C-n>

" Clip Board!!!
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


" Tab navigation mappings

" New tab
" map <C-t> :tabnew<CR> 
" imap <C-t> <ESC>:tabnew<CR> 

" Close tab
" map <C-q> :tabclose<CR> 
" imap <C-q> :tabclose<CR> 

" Move Right
" map <C-l> :tabn<CR>
" imap <C-l> <ESC>:tabn<CR>
" map <C-j> :tabn<CR>
" imap <C-j> <ESC>:tabn<CR>

" Move Left
" map <C-h> :tabp<CR>
" imap <C-h> <ESC>:tabp<CR>
" map <C-k> :tabp<CR>
" imap <C-k> <ESC>:tabp<CR>

" clear search results
nnoremap <silent> // :noh<CR>

" FZF Searches
nnoremap <C-p> :History<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-g> :GGrep<CR>




