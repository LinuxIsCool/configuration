
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
map tt :tabnew<CR> 
map <S-k> :tabn<CR>
imap <S-k> <ESC>:tabn<CR>
map <S-j> :tabp<CR>
imap <S-j> <ESC>:tabp<CR>
map <M-k> :tabn<CR>
imap <M-k> <ESC>:tabn<CR>
map <M-j> :tabp<CR>
imap <M-j> <ESC>:tabp<CR>

" clear search results
nnoremap <silent> // :noh<CR>




