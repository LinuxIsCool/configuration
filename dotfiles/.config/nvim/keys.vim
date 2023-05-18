
"------------------------------------------------------------------------------
" Inherited from MattCoding4Days
" remap default leader key to comma
let mapleader = ","
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>e :e $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>i :w<CR>:source $MYVIMRC<CR>:PlugInstall<CR>


" Change Ctrl N mapping to Ctrl Space "
inoremap <C-space> <C-n>


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


" tab navigation mappings

" New tab
map <C-t> :tabnew<CR> 
imap <C-t> <ESC>:tabnew<CR> 

" Close tab
map <C-q> :tabclose<CR> 
imap <C-q> :tabclose<CR> 

" Move Right
map <C-l> :tabn<CR>
imap <C-l> <ESC>:tabn<CR>
map <C-j> :tabn<CR>
imap <C-j> <ESC>:tabn<CR>

" Move Left
map <C-h> :tabp<CR>
imap <C-h> <ESC>:tabp<CR>
map <C-k> :tabp<CR>
imap <C-k> <ESC>:tabp<CR>

" clear search results
nnoremap <silent> // :noh<CR>

" FZF Searches
nnoremap <C-p> :History<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-g> :GGrep<CR>




