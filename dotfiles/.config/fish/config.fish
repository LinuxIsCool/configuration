#-------------------------------------------------------------------------------
# Fish Configuration 
# Started September 14th 2020 by Shawn Anderson
#
# This configuration heavily integrates fish with vim, tmux, fzf, and other
# powerful commandline tools. It's interactive computing for effective 
# workflow.
#-------------------------------------------------------------------------------
# FZF -> Fuzzy find everything!

# Use Ripgrep (Faster than Grep)
if type rg &> /dev/null
  set FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/"'
end

# Multi-select by default
set FZF_DEFAULT_OPTS '-m'

# If installed through vim, fzf needs to be added to path
set PATH $PATH ~/.local/share/nvim/plugged/fzf/bin

#-------------------------------------------------------------------------------
# Autojump -> Faster filesystem navigation
if test -f ~/.autojump/share/autojump/autojump.fish
  . ~/.autojump/share/autojump/autojump.fish 
end
#-------------------------------------------------------------------------------
# Abbreviations 
abbr vim nvim
abbr cat bat
abbr pd prevd
abbr l ls -a

#-------------------------------------------------------------------------------
# Key Bindings
bind \er 'source ~/.config/fish/config.fish' 
bind \ev '$EDITOR ~/.config/nvim/init.vim'
bind \ef '$EDITOR ~/.config/fish/config.fish'
bind \et '$EDITOR ~/.tmux.conf'
# bind \es '$EDITOR ~/.ssh/config'
bind \ed '$EDITOR ~/Workspace/dotfiles/'
bind \ew '$EDITOR ~/Workspace/'
bind \en '$EDITOR ~/Notes/'
# bind \cg 'sr google '
# bind \cy 'sr youtube '
bind \ck beginning-of-line # Use k because \ca is overwitten as my tmux leader
set FZF_TMUX 1
