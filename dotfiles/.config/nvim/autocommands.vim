" This makes the location of the current open file always the current working
" directory of vim. This pairs very nicely with tmux. Added - Sept 15th 2020
autocmd BufEnter * lcd %:p:h



augroup vyper_ft
  au!
  autocmd BufNewFile,BufRead *.vy   set syntax=vyper
augroup END

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


" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" Recompile suckless programs. only for files that are config.h
autocmd BufWritePost config.h,config.def.h !sudo make install; make clean    

" Comile any latex document into pdf form
autocmd BufWritePost answers.tex !pdflatex answers.tex   

" Compile markdown notes to pdf
" This is fucking cool but also requires a bunch on dependencies on popos.
" requires pandoc and texlive-latex-base
"autocmd BufWritePost notes.md !pandoc -s -o notes.pdf notes.md

" clear empty spaces at the end of lines on save of python files
"autocmd BufWritePre *.py :%s/\s\+$//e


" Ability to add python breakpoints
" (I use ipdb, but you can change it to whatever tool you use for debugging)
au FileType python map <silent> <leader>b Oimport ipdb; ipdb.set_trace()<esc>



" Use auocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()


"
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



" https://stackoverflow.com/questions/4292733/vim-creating-parent-directories-on-save
" Make parent directories when writing.
" Currently giving really wierd functionallity.
" function s:MkNonExDir(file, buf)
"     if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
"         let dir=fnamemodify(a:file, ':h')
"         if !isdirectory(dir)
"             call mkdir(dir, 'p')
"         endif
"     endif
" endfunction
" augroup BWCCreateDir
"     autocmd!
"     autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
" augroup END
