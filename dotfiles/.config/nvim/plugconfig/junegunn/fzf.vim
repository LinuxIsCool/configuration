" Fzf ------------------------------
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" The amazing junegunn fzf in vim.

" Fzf.vim ------------------------------
Plug 'junegunn/fzf.vim' 

" From https://github.com/antoinemadec/coc-fzf
Plug 'antoinemadec/coc-fzf'
"COMMANDS                                                      *fzf-vim-commands*
"==============================================================================

    "*:Files* *:GFiles* *:Buffers* *:Colors* *:Ag* *:Rg* *:Lines* *:BLines* *:Tags* *:BTags* *:Marks*
        "*:Windows* *:Locate* *:History* *:Snippets* *:Commits* *:BCommits* *:Commands* *:Maps*
                                                          "*:Helptags* *:Filetypes*

 "------------------+-----------------------------------------------------------------------
 "Command           | List                                                                  ~
 "------------------+-----------------------------------------------------------------------
  "`:Files [PATH]`    | Files (runs  `$FZF_DEFAULT_COMMAND`  if defined)
  "`:GFiles [OPTS]`   | Git files ( `git ls-files` )
  "`:GFiles?`         | Git files ( `git status` )
  "`:Buffers`         | Open buffers
  "`:Colors`          | Color schemes
  "`:Ag [PATTERN]`    | {ag}{6} search result ( `ALT-A`  to select all,  `ALT-D`  to deselect all)
  "`:Rg [PATTERN]`    | {rg}{7} search result ( `ALT-A`  to select all,  `ALT-D`  to deselect all)
  "`:Lines [QUERY]`   | Lines in loaded buffers
  "`:BLines [QUERY]`  | Lines in the current buffer
  "`:Tags [QUERY]`    | Tags in the project ( `ctags -R` )
  "`:BTags [QUERY]`   | Tags in the current buffer
  "`:Marks`           | Marks
  "`:Windows`         | Windows
  "`:Locate PATTERN`  |  `locate`  command output
  "`:History`         |  `v:oldfiles`  and open buffers
  "`:History:`        | Command history
  "`:History/`        | Search history
  "`:Snippets`        | Snippets ({UltiSnips}{8})
  "`:Commits`         | Git commits (requires {fugitive.vim}{9})
  "`:BCommits`        | Git commits for the current buffer
  "`:Commands`        | Commands
  "`:Maps`            | Normal mode mappings
  "`:Helptags`        | Help tags [1]
  "`:Filetypes`       | File types
 "------------------+-----------------------------------------------------------------------
nnoremap <C-f> :Commands<CR>fzf#
nnoremap <C-p> :History<CR>
"nnoremap <C-p><C-r> :History:<CR>
"nnoremap <C-p><C-s> :History/<CR>
"nnoremap <C-p><C-t> :Files<CR>
"nnoremap <C-p><C-c> :Colors<CR>
"nnoremap <C-p><C-w> :Windows<CR>
"nnoremap <C-p><C-k> :Commands<CR>
"nnoremap <C-p><C-h> :Helptags<CR>
"nnoremap <C-p><C-m> :Maps<CR>
"nnoremap <C-p><C-b> :Buffers<CR>
"nnoremap <C-p><C-f> :Filetypes<CR>
"nnoremap <C-p><C-l> :Lines<CR>

"For jmcomets/vim-pony
nnoremap <leader>d :Commands<CR>'DjangoGoto 

" Workspace Search
command! -bang Work call fzf#vim#files('~/Workspace', <bang>0)

" Grep current git project
command! -bang -nargs=* Work2
  \ call fzf#vim#files(
  \   'git grep --line-number -- '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number -- '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
