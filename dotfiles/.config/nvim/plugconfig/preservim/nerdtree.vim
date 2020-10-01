" NERDTree -----------------------------
" Better file browser
Plug 'preservim/nerdtree'

" toggle nerdtree display
map <C-n> :NERDTreeToggle<CR>

" open nerdtree with the current file selected
nmap <leader><C-n> :NERDTreeFind<CR>

" don't show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

