#-------------------------------------------------------------------------------
# Fish Configuration 
# Started September 14th 2020 by Shawn Anderson
#
# This configuration heavily integrates fish with vim, tmux, fzf, and other
# powerful commandline tools. It's interactive computing for effective 
# workflow.
#-------------------------------------------------------------------------------
# Abbreviations 
abbr python python3
abbr vim nvim
abbr cat bat
abbr pd prevd
abbr l ls -a

#-------------------------------------------------------------------------------
# Key Bindings
bind \ee '$EDITOR ~/.config/fish/config.fish' # Edit config.fish with alt-e
bind \er 'exec fish'                          # Reload fish config with alt-r
bind \cg delete-char                          # Replace readline <C-d> with <C-g> because <C-d> also exits shells.
bind \ea beginning-of-line                    # Replace <C-a> with <Alt-a> because <C-a> is used as tmux leader key.

#-------------------------------------------------------------------------------
# FZF -> Fuzzy find everything!
set PATH $PATH ~/.local/share/nvim/plugged/fzf/bin # Fzf is installed through vim plug
set FZF_TMUX 1                              # Use tmux pane by default
set FZF_DEFAULT_OPTS '-m'                   # Multi-select by default
if type rg &> /dev/null                     # Use Ripgrep (Faster than Grep)
  set FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/" --glob "!plugged/"'
  set FZF_CTRL_T_COMMAND 'rg --files --hidden --follow --glob "!.git/" --glob "!plugged/" $dir'
end

#-------------------------------------------------------------------------------
# Autojump -> Faster filesystem navigation
if test -f ~/.autojump/share/autojump/autojump.fish
  . ~/.autojump/share/autojump/autojump.fish 
end

#-------------------------------------------------------------------------------
# See fishfile for installed plugins through fisherman
