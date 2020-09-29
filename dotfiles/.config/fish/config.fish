#-------------------------------------------------------------------------------
# Fish Configuration 
# Started September 14th 2020 by Shawn Anderson
#
# This configuration heavily integrates fish with vim, tmux, fzf, and other
# powerful commandline tools. It's interactive computing for effective 
# workflow.
#-------------------------------------------------------------------------------
# FZF -> Fuzzy find everything!

# Use tmux pane by default
set FZF_TMUX 1

# Use Ripgrep (Faster than Grep)
if type rg &> /dev/null
  set FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/" --glob "!plugged/"'
  set FZF_CTRL_T_COMMAND 'rg --files --hidden --follow --glob "!.git/" --glob "!plugged/" $dir'
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
abbr python python3
abbr vim nvim
abbr cat bat
abbr pd prevd
abbr l ls -a

#-------------------------------------------------------------------------------
# Key Bindings

# Edit and reload
bind \ee '$EDITOR ~/.config/fish/config.fish'
bind \er 'exec fish' 

# Replace \cd with \cg because \cd also exits shells.
bind \cg delete-char
# Replace \ca with \ea because \ca is used as tmux leader key.
bind \ea beginning-of-line

#-------------------------------------------------------------------------------
# Forgit plugin requires sourcing to activate abbreviations
# From https://github.com/wfxr/forgit
source ~/.config/fish/functions/forgit.plugin.fish
