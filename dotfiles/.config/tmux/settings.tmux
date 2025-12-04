# change pane numbers to start with 1 instead of 0
#set -g base-index 1
#set -g pane-base-index 1

# Set fish as default shell
set -g default-shell /usr/bin/fish

# Turn off visual error messages
set -g visual-bell off

# dont automatically rename windows
set-option -g allow-rename off

# Get 24 bit colors
set -g default-terminal "tmux-256color" # or tmux-256color
set -ga terminal-overrides ",*256col*:Tc"

# Sixel graphics passthrough (requires tmux 3.4+)
set -g allow-passthrough on
set -ga terminal-overrides ',*:Sixel=1'

# No lag after ESC.
set-option -sg escape-time 0

# set -g pane-border-status on
#set -g pane-border-style "bg=default,fg=default"
#set -g pane-active-border-style "bg=default,fg=green"

# toggle pane title visibility from https://github.com/tmux/tmux/issues/680
#bind H run 'zsh -c "arr=( off top ) && tmux setw pane-border-status \${arr[\$(( \${arr[(I)#{pane-border-status}]} % 2 + 1 ))]}"'





