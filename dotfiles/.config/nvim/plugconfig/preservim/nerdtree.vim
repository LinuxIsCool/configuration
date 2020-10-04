" NERDTree -----------------------------
" Better file browser
Plug 'preservim/nerdtree'

" toggle nerdtree display
map <C-n> :NERDTreeToggle<CR>

" open nerdtree with the current file selected
nmap <leader><C-n> :NERDTreeFind<CR>

"Special close
nmap <C-c> :NERDTreeClose<CR>

" don't show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" Below is an fzf search of :Commands 'NERD'"
"NERDTreeVCS ?                    dir           :call <SNR>60_CreateTabTreeVCS('<args>')                                                                                                                                     │
"NERDTreeToggleVCS ?                    dir           :call <SNR>60_ToggleTabTreeVCS('<args>')                                                                                                                               │
"NERDTreeToggle ?                    dir           :call g:NERDTreeCreator.ToggleTabTree('<args>')                                                                                                                           │
"NERDTreeRefreshRoot 0                                  call s:refreshRoot()                                                                                                                                                 │
"NERDTreeMirror 0                                  call g:NERDTreeCreator.CreateMirror()                                                                                                                                     │
"NERDTreeFromBookmark 1                    customlist    call g:NERDTreeCreator.CreateTabTree('<args>')                                                                                                                      │
"NERDTreeFocus 0                                  call NERDTreeFocus()                                                                                                                                                       │
"NERDTreeFind ?                    file          call s:findAndRevealPath('<args>')                                                                                                                                          │
"NERDTreeClose 0                                  :call g:NERDTree.Close()                                                                                                                                                   │
"NERDTreeCWD 0                                  call NERDTreeCWD()                                                                                                                                                           │
"NERDTree    ?                    dir           :call g:NERDTreeCreator.CreateTabTree('<args>')


