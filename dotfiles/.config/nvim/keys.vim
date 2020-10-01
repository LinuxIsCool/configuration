
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
map tt :tabnew 
map <M-Right> :tabn<CR>
imap <M-Right> <ESC>:tabn<CR>
map <M-Left> :tabp<CR>
imap <M-Left> <ESC>:tabp<CR>

" clear search results
nnoremap <silent> // :noh<CR>




