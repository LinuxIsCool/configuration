" ============================================================================
" Vim-plug initialization
let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.config/nvim/autoload/plug.vim')
if !filereadable(vim_plug_path)
    echo "Installing Vim-plug..."
    echo "" silent !mkdir -p "$HOME/.config/nvim/autoload"
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let vim_plug_just_installed = 1
endif

" manually load vim-plug the first time
if vim_plug_just_installed
    :execute 'source '.fnameescape(vim_plug_path)
    :PlugInstall
endif

" ============================================================================
" Source plugs
call plug#begin('~/.config/nvim/plugged')
" Use ,e to jump to plugin config files.
nnoremap <buffer> <leader>e viW"ay :e <C-r>a<CR>
" Use ,g to jump to plugin readme on github.
nnoremap <buffer> <leader>g 0wwlvt."ay :!open https://github.com/<C-r>a<CR>
" Use ,x to format Plug 'junegunn/vim-emoji' -> runtime plugconfig/junegunn/vim-emoji
nnoremap <buffer> <leader>x 0"xyyciwruntime plugconfig/<esc>t'xxf'xa.vim<esc><leader>e"xp
runtime plugconfig/junegunn/vim-emoji.vim
runtime plugconfig/pechorin/any-jump.vim
runtime plugconfig/townk/vim-autoclose.vim
runtime plugconfig/tpope/vim-repeat.vim
runtime plugconfig/liuchengxu/vim-which-key.vim
"runtime plugconfig/airblade/vim-rooter.vim 
runtime plugconfig/luochen1990/rainbow.vim 
runtime plugconfig/preservim/nerdcommenter.vim
runtime plugconfig/preservim/nerdtree.vim
runtime plugconfig/neoclide/coc.vim.vim
runtime plugconfig/junegunn/fzf.vim
runtime plugconfig/arielrossanigo/dir-configs-override.vim.vim
runtime plugconfig/voldikss/vim-floaterm.vim
"runtime plugconfig/justinmk/vim-sneak.vim
runtime plugconfig/honza/vim-snippets.vim
"runtime plugconfig/unblevable/quick-scope.vim
runtime plugconfig/junegunn/vim-github-dashboard.vim
runtime plugconfig/jmcomets/vim-pony.vim
Plug 'psliwka/vim-smoothie'

Plug 'airblade/vim-gitgutter'
" Tagbar -----------------------------
Plug 'majutsushi/tagbar'
" TODO known problems:
" * current block not refreshing'
"
" toggle tagbar display
nmap <leader>o :TagbarToggle<CR>
nmap <leader>t :Tasklist<CR>
Plug 'metakirby5/codi.vim'

" autofocus on tagbar open
let g:tagbar_autofocus = 1
Plug 'esamattis/slimux'
map <Leader>s :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>

" Search results counter
Plug 'vim-scripts/IndexedSearch'

" Plugin for live preview of LaTex
Plug 'donRaphaco/neotex', {'for': 'tex'}



" Lightline
" Lightline Themes Configurations
Plug 'itchyny/lightline.vim'
let g:lightline = {
    \ 'colorscheme': 'simpleblack',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'cocstatus': 'coc#status'
    \ },
    \ }

" Pending tasks list
Plug 'fisadev/FixedTaskList.vim'
" Tasklist ------------------------------
" show pending tasks list
map <leader>tl :TaskList<CR>


" Completion from other opened files
Plug 'Shougo/context_filetype.vim'

" Autoclose ------------------------------
" Automatically close parenthesis, etc
Plug 'Townk/vim-autoclose'
" Fix to let ESC work as espected with Autoclose plugin
" (without this, when showing an autocompletion window, ESC won't leave insert
"  mode)
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}
let g:AutoClosePairs = "() {} [] ' ` \" "


" Indent text object
Plug 'michaeljsmith/vim-indent-object'

" Indentation based movements
Plug 'jeetsukumaran/vim-indentwise'

" Better language packs
Plug 'sheerun/vim-polyglot'

" Ack code search (requires ack installed in the system)
Plug 'mileszs/ack.vim'
" TODO is there a way to prevent the progress which hides the editor?

" Paint css colors with the real color
Plug 'lilydjwg/colorizer'
" TODO is there a better option for neovim?

" Generate html in a simple way
Plug 'mattn/emmet-vim'
" Emmet mappings
let g:user_emmet_mode='a'  " enable all functions in all modes
let g:user_emmet_leader_key='<C-S>'


" Git integration
Plug 'tpope/vim-fugitive'

" Signify ------------------------------
" Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
let g:signify_vcs_list = [ 'git', 'hg' ]
" mappings to jump to changed blocks
nmap <leader>sn <plug>(signify-next-hunk)
nmap <leader>sp <plug>(signify-prev-hunk)

" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227


" Linters
Plug 'neomake/neomake'
" TODO is it running on save? or when?
" TODO not detecting errors, just style, is it using pylint?


" Nice icons: Need to install patched font for this to work
Plug 'ryanoasis/vim-devicons'
" This is solves a bug in devicons that appears when sourcing vimrc
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
" Devicon Configurations
" loading the plugin
let g:webdevicons_enable = 1



" add or override individual additional filetypes
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['mkv'] = 'ƛ'

" Show indention level through lines
Plug 'Yggdroot/indentLine'
" Indention Config
let g:indentLine_char = '┊'


" Distraction free programming
Plug 'junegunn/goyo.vim'
" Goyo mappings
nmap <C-g> :Goyo<CR>

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Tell vim-plug we finished declaring plugins, so it can load them
call plug#end()

" ============================================================================
" Install plugins the first time vim runs
if vim_plug_just_installed
    echo "Installing Bundles, please ignore key map error messages"
    :PlugInstall
endif


