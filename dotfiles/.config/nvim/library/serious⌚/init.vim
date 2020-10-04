"  ____  _                          
" / ___|| |__   __ ___      ___ __  
" \___ \| '_ \ / _` \ \ /\ / / '_ \ 
"  ___) | | | | (_| |\ V  V /| | | |
" |____/|_| |_|\__,_| \_/\_/ |_| |_|
"     _              _                           
"    / \   _ __   __| | ___ _ __ ___  ___  _ __  
"   / _ \ | '_ \ / _` |/ _ \ '__/ __|/ _ \| '_ \ 
"  / ___ \| | | | (_| |  __/ |  \__ \ (_) | | | |
" /_/   \_\_| |_|\__,_|\___|_|  |___/\___/|_| |_|
" 
" __     ___           
" \ \   / (_)_ __ ___  
"  \ \ / /| | '_ ` _ \ 
"   \ V / | | | | | | |
"Neo \_/  |_|_| |_| |_|
"   ____             __ _                       _   _             
"  / ___|___  _ __  / _(_) __ _ _   _ _ __ __ _| |_(_) ___  _ __  
" | |   / _ \| '_ \| |_| |/ _` | | | | '__/ _` | __| |/ _ \| '_ \ 
" | |__| (_) | | | |  _| | (_| | |_| | | | (_| | |_| | (_) | | | |
"  \____\___/|_| |_|_| |_|\__, |\__,_|_|  \__,_|\__|_|\___/|_| |_|
"                         |___/                                   
"
" ==============================================================================
" Now that I actually know what I'm doing in vim (somewhat) I'm starting a new
" config from scratch that will be the amalgamation of all the vim tricks and
" tweaks that I have accumulated over the years. Development is in close
" collaboration with Matthew Williams, whom I have been having a lot of vim
" discussions with lately. Original plugin count: Matt-28 Shawn-39. Only 10
" overlapping. Matt had the deprecated nerdtree and Shawn had the deprecated
" nerdcommenter. In these cases the author has changed to preservim from
" scrooloose.
" 
" September 22nd 2020 - Shawn Anderson
" ==============================================================================
" Contents
" 0. Header and Introduction
" 1. Table of Contents
" 2. Feature List
" 3. Key Binding Listing and Philosophy
" 4. Plugin Directory and Customization
" 5. Conquer of Completion
" 6. General Configuration
" 7. Language Specific Configuration
" ==============================================================================
" Feature List
" TODO Tag based organization
" TODO Fuzzy search oriented workflow
" TODO Use ripgrep for plazingly fast file and string searches
" TODO Use bat for beautiful previews during fuzzy searches
" TODO Nerdtree Power Usage
" TODO Rapid Configuration with Key Bindings
" TODO Open plugin documentation from init.vim
" TODO Plugin graduation process from experimental to optional to required
" TODO Sort plugins by author, category, or requirment status
" ==============================================================================
" Key Binding List
" ==============================================================================
" Plugin Directory and Configuration
call plug#begin('~/.config/nvim/plugged')
Plug 'airblade/vim-gitgutter' " #git #:experimental #Origin-Shawn
Plug 'airblade/vim-rooter' " Used by fzf... TODO Why? #FuzzySearch #:experimental #Origin-Shawn
Plug 'alvan/vim-closetag' " Close tag pairs #Coding #:experimental #Origin-Shawn
Plug 'arielrossanigo/dir-configs-override.vim' "Override configs by directory TODO What is this? #Origin-Matt
Plug 'bfredl/nvim-ipy' " Ipython in Vim. TODO Is this complementary to Matt's floaterm workflow? #Coding #Python #:experimental #Origin-Shawn
Plug 'donRaphaco/neotex', {'for': 'tex'} "Plugin for live preview of LaTex #Origin-Matt
Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') } " Compose Markdown to view in browser #Workflow #:optional #Origin-Shawn
Plug 'fisadev/FixedTaskList.vim' "Pending tasks list #Origin-Matt
Plug 'itchyny/lightline.vim' "Lightline #Origin-Matt
Plug 'jeetsukumaran/vim-indentwise' " Indentation based movements #Origin-Matt
Plug 'jeffkreeftmeijer/vim-numbertoggle' " TODO What is this? #:experimental #Origin-Shawn
Plug 'jez/vim-superman' " Man Pages in Vim #SystemUtility #:experimental #Origin-Shawn
Plug 'jiangmiao/auto-pairs' " Auto close brackets TODO Is this necessary? #Coding #:experimental #Origin-Shawn
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "Code and files fuzzy finder #Origin-Matt
Plug 'junegunn/fzf.vim' "fzf for vim #Origin-Matt
Plug 'junegunn/goyo.vim' " Distraction free programming #Origin-Matt #:optional #Origin-Shawn
Plug 'junegunn/gv.vim' " #git #:experimental #Origin-Shawn
Plug 'junegunn/limelight.vim' " #:optional #Origin-Shawn
Plug 'junegunn/vim-easy-align' " #:experimental #Origin-Shawn
Plug 'junegunn/vim-emoji' "Vim Emoji #typing #Origin-Matt
Plug 'junegunn/vim-github-dashboard' " #git #:experimental #Origin-Shawn
Plug 'jreybert/vimagit' " Interactive git dashboard like emacs magit #git #:experimental #Origin-Shawn
Plug 'lilydjwg/colorizer' " Paint css colors with the real color #Origin-Matt
Plug 'liuchengxu/vista.vim' " Language server protocol.. TODO how does this relate to COC? #:experimental #Origin-Shawn
Plug 'lotabout/slimux' " Send strings across tmux panes! #Workflow #:optional #Origin-Shawn
Plug 'luochen1990/rainbow' "Rainbow Brackets #typing #Origin-Matt
Plug 'majutsushi/tagbar' "Class/module browser TODO known problems: * current block not refreshing' #Origin-Matt
Plug 'mattn/emmet-vim' " Generate html in a simple way TODO is this obsolete by coc-emmet #Origin-Matt
Plug 'mhinz/vim-signify' " Git/mercurial/others diff icons on the side of the file lines #Origin-Matt
Plug 'mhinz/vim-startify' " Fun homepage for vim #Workflow #:optional #Origin-Shawn
Plug 'michaeljsmith/vim-indent-object' " Indent text object #Origin-Matt
Plug 'mileszs/ack.vim' " Ack code search (requires ack installed in the system) TODO is there a way to prevent the progress which hides the editor? #Origin-Matt
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Conquer of Completion #Completions #Origin-Matt #:required #Origin-Shawn
Plug 'neoclide/coc-eslint' " #Javascript #Linting #:experimental #Origin-Shawn
Plug 'neoclide/coc-prettier' " #Javascript #Linting #:experimental #Origin-Shawn
Plug 'neoclide/jsonc.vim' " TODO What is this? #:experimental #Origin-Shawn
Plug 'neomake/neomake' " #Linters TODO is it running on save? or when? TODO not detecting errors, just style, is it using pylint? #Origin-Matt #Origin-Shawn
Plug 'preservim/nerdcommenter' "Quick Commentor #typing #Origin-Matt
Plug 'preservim/nerdtree' | " #:required #Origin-Shawn
            \ Plug 'Xuyuanp/nerdtree-git-plugin' | " #:optional #Origin-Shawn
            \ Plug 'ryanoasis/vim-devicons' "Nice icons: Need to install patched font for this to work #Origin-Matt #:optional #Origin-Shawn
Plug 'scrooloose/nerdcommenter' " #:optional #Origin-Shawn
Plug 'scrooloose/nerdtree' "Vim extendable file browser #Origin-Matt
Plug 'sheerun/vim-polyglot' " #Origin-Shawn
Plug 'sheerun/vim-polyglot' " Better language packs #Origin-Matt
Plug 'shougo/context_filetype.vim' "Completion from other opened files #Origin-Matt
Plug 'Shougo/denite.nvim' " Unite all interfaces TODO Is this necessary with fzf? #Workflow #:experimental #Origin-Shawn
Plug 'tomlion/vim-solidity' " TODO I'm sure that we don't need this given COC #:experimental #Origin-Shawn
Plug 'townk/vim-autoclose' "Automatically close parenthesis, etc #Origin-Matt
Plug 'tpope/vim-fugitive' " Git integration #git #Origin-Matt
Plug 'tpope/vim-fugitive' " #:required #Origin-Shawn
Plug 'tpope/vim-repeat' " Enable dot operator to work on plugin commands #Workflow #:required #Origin-Shawn
Plug 'tpope/vim-rhubarb' " TODO What the heck is this? #:experimental #Origin-Shawn
Plug 'tpope/vim-speeddating' " TODO What is this? #:experimental #Origin-Shawn
Plug 'tpope/vim-surround' " Nice vim utility for surrounding blocks with things #Workflow #:optional #Origin-Shawn
Plug 'tpope/vim-unimpaired' " TODO What does this do? #Workflow #:experimental #Origin-Shawn
Plug 'vim-airline/vim-airline' " Airline status bar. TODO I'm sure I don't need this. Whatever Matt is doing is better. #:optional #Origin-Shawn
Plug 'vim-airline/vim-airline-themes' " Airline status bar. TODO I'm sure I don't need this. Whatever Matt is doing is better. #:optional #Origin-Shawn
Plug 'vim-scripts/indexedsearch' "Search results counter #Origin-Matt
Plug 'vimwiki/vimwiki' " For ultimate organization. #Workflow #:required #Origin-Shawn
Plug 'voldikss/vim-floaterm' "Integrated Floating terminal #Origin-Matt
Plug 'yggdroot/indentline' "Show indention level through lines #Origin-Matt
Plug 'yggdroot/indentline' " #Origin-Shawn
call plug#end()
" ============================================================================

:smile

" vim-devicons
" add or override individual additional filetypes
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['mkv'] = 'ƛ'



