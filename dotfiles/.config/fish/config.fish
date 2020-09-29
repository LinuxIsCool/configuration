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
# Alt-c for directory history
if type d &> /dev/null                     # Use <M-c> to fuzzy search directory history
  set FZF_CTRL_J_COMMAND "__fastdir_dirhist -l -n | awk -v OFS='%s' '{print \$2}' | awk '!x[\$0]++' | fzf-tmux "
end
# Alt-c for autojump database
set FZF_CTRL_O_COMMAND "bat ~/.local/share/autojump/autojump.txt | sort -nr | fzf-tmux +s | awk -F '\t' '{printf \$2}'"
set FZF_PREVIEW_FILE_CMD "bat"
set FZF_PREVIEW_DIR_CMD "tree"

bind \cj eval $FZF_CTRL_J_COMMAND
bind \co eval $FZF_CTRL_O_COMMAND

command -v blsd > /dev/null && export FZF_ALT_C_COMMAND='blsd'

#-------------------------------------------------------------------------------
# Autojump -> Faster filesystem navigation
if test -f ~/.autojump/share/autojump/autojump.fish
  . ~/.autojump/share/autojump/autojump.fish 
end

#-------------------------------------------------------------------------------
# See fishfile for installed plugins through fisherman
