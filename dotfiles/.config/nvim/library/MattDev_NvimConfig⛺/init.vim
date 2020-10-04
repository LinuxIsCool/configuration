runtime plugins.vim
runtime settings.vim
runtime themes.vim
runtime autocommands.vim                
runtime coc.vim                
runtime keys.vim

" Check code as python3 by default
let g:neomake_python_python_maker = neomake#makers#ft#python#python()
let g:neomake_python_flake8_maker = neomake#makers#ft#python#flake8()
let g:neomake_python_python_maker.exe = 'python3 -m py_compile'
let g:neomake_python_flake8_maker.exe = 'python3 -m flake8'

" Disable error messages inside the buffer, next to the problematic line
let g:neomake_virtualtext_current_error = 1

"------------------------------------------------------------------------------
" Shawn Anderson as of September 30th 2020
noremap <leader>f 0
noremap <leader>j $
map <leader>/ :nohl<CR>

test
