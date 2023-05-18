
"" Color Scheme set up for Material ===============================
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" < https://github.com/neovim/neovim/wiki/Following-HEAD #20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" use 256 colors when possible
if (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256') || has('nvim')
    let &t_Co = 256
    syntax on
    set background=light
    colorscheme quantum
else
    colorscheme jellybeans
endif
