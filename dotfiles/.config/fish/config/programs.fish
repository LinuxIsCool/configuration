#-------------------------------------------------------------------------------
# Autojump -> Faster filesystem navigation
if test -f ~/.autojump/share/autojump/autojump.fish
  . ~/.autojump/share/autojump/autojump.fish 
end


#-------------------------------------------------------------------------------
# FZF -> Fuzzy find everything!

# Fzf is installed through vim plug
set PATH $PATH ~/.local/share/nvim/plugged/fzf/bin 

# Use tmux pane by default
set FZF_TMUX 1                              

# Multi-select by default
set FZF_DEFAULT_OPTS '-m'                   

# Use Ripgrep (Faster than Grep)
if type rg &> /dev/null                     
  set FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/" --glob "!plugged/"'
  set FZF_CTRL_T_COMMAND 'rg --files --hidden --follow --glob "!.git/" --glob "!plugged/" $dir'
end

if type d &> /dev/null                     
  set FZF_CTRL_J_COMMAND "__fastdir_dirhist -l -n | awk -v OFS='%s' '{print \$2}' | awk '!x[\$0]++' | fzf-tmux "
  bind \cj eval $FZF_CTRL_J_COMMAND
end

# Ctrl-o for preview file using bat
if type batcat &> /dev/null                     
  set FZF_PREVIEW_FILE_CMD "batcat"
  set FZF_CTRL_O_COMMAND "batcat ~/.local/share/autojump/autojump.txt | sort -nr | fzf-tmux +s | awk -F '\t' '{printf \$2}'"
  bind \co eval $FZF_CTRL_O_COMMAND
end

# Preview directories using tree
if type tree &> /dev/null                     
    set FZF_PREVIEW_DIR_CMD "tree"
end

# Alt-c for directory history using blsd
command -v blsd > /dev/null && export FZF_ALT_C_COMMAND='blsd'
