" Apparently the following enables alt to work in vim. Source: https://stackoverflow.com/questions/6778961/alt-key-shortcuts-not-working-on-gnome-terminal-with-vim
"let c='a'
"while c <= 'z'
  "exec "set <A-".c.">=\e".c
  "exec "imap \e".c." <A-".c.">"
  "let c = nr2char(1+char2nr(c))
"endw
"set timeout ttimeoutlen=50

" Initialized 2023-06-29 from https://github.com/romgrk/barbar.nvim
"
"
"
" 
" Move to previous/next
nnoremap <silent>    <M-p> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <M-h> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <M-j> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <C-h> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <C-j> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <M-n> <Cmd>BufferNext<CR>
nnoremap <silent>    <M-l> <Cmd>BufferNext<CR>
nnoremap <silent>    <M-k> <Cmd>BufferNext<CR>
nnoremap <silent>    <C-l> <Cmd>BufferNext<CR>
nnoremap <silent>    <C-k> <Cmd>BufferNext<CR>

" Re-order to previous/next
nnoremap <silent>    <M-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <M->> <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <M-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <M-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <M-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <M-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <M-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <M-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <M-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <M-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <M-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <M-0> <Cmd>BufferLast<CR>

" Pin/unpin buffer
nnoremap <silent>    <M-z> <Cmd>BufferPin<CR>

" Close buffer
nnoremap <silent>    <M-q> <Cmd>BufferClose<CR>

" Restore buffer
nnoremap <silent>    <M-w> <Cmd>BufferRestore<CR>

" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButVisible
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight

" Magic buffer-picking mode
nnoremap <silent> <M-f>    <Cmd>BufferPick<CR>
nnoremap <silent> <C-p>    <Cmd>BufferPickDelete<CR>

" Sort automatically by...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used


