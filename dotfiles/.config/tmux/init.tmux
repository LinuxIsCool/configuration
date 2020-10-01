# Changed prefix to C-Space October 10th
# Set prefix to Ctrl-Space
# unbind C-b
# set -g prefix C-Space
# bind Space send-prefix
# Set the prefix to ^A
unbind C-b
set -g prefix ^A

# change pane numbers to start with 1 instead of 0
set -g base-index 1
set -g pane-base-index 1

# Set fish as default shell
set -g default-shell /usr/bin/fish

# screen ^C c
unbind ^C
bind ^C new-window -c '#{pane_current_path}'
bind c new-window -c '#{pane_current_path}' 


# No lag after ESC.
set -sg escape-time 5

set -g visual-bell on

#urxvt tab like window switching (-n: no prior escape seq)
bind -n S-down new-window
bind -n S-left prev
bind -n S-right next
bind -n C-left swap-window -t -1
bind -n C-right swap-window -t +1

# Surfraw shortcuts
# bind -n g send-keys -t . "sr google "
bind -n g send-keys -t . "g"


# zoom a pane into a new window for temporary work
# unbind +
# bind + new-window -d -n tmux-zoom 'clear && echo TMUX ZOOM && read' \; swap-pane -s tmux-zoom.0 \; select-window -t tmux-zoom
# unbind -
# bind - last-window \; swap-pane -s tmux-zoom.0 \; kill-window -t tmux-zoom

# dont automatically rename windows
set-option -g allow-rename off

#detach ^D d
unbind ^D
bind ^D detach

unbind p
bind p previous-window

# Break pane into it's own window
unbind b
bind b break-pane

#remove prompt from kill
unbind x
bind x kill-pane
# -a is for all panes except current
bind C-x kill-pane -a

# windows ^W w
unbind ^W
bind ^W list-windows
unbind w
bind w list-windows

#redisplay ^L l
unbind ^L
bind ^L refresh-client

#quick reload and edit config
bind-key r source-file ~/.tmux.conf \; display-message "Tmux config reloaded"
bind-key e split-window -h "nvim ~/.config/tmux/init.tmux"

# split windows like vim
bind s split-window -v -c '#{pane_current_path}' 
bind v split-window -h -c '#{pane_current_path}' 

# move around panes with hjkl
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
unbind l
bind l select-pane -R

#activate mouse
set -g mouse on

# From https://github.com/tmux/tmux/issues/1320
# Emulate scrolling by sending up and down keys if these commands are running in the pane
tmux_commands_with_legacy_scroll="nano less more man git"

bind-key -T root WheelUpPane \
	if-shell -Ft= '#{?mouse_any_flag,1,#{pane_in_mode}}' \
		'send -Mt=' \
		'if-shell -t= "#{?alternate_on,true,false} || echo \"#{tmux_commands_with_legacy_scroll}\" | grep -q \"#{pane_current_command}\"" \
			"send -t= Up" "copy-mode -et="'

bind-key -T root WheelDownPane \
	if-shell -Ft = '#{?pane_in_mode,1,#{mouse_any_flag}}' \
		'send -Mt=' \
		'if-shell -t= "#{?alternate_on,true,false} || echo \"#{tmux_commands_with_legacy_scroll}\" | grep -q \"#{pane_current_command}\"" \
			"send -t= Down" "send -Mt="'



# vi-style controls for copy-mode
setw -g mode-keys vi
setw -g xterm-keys on

# Get 24 bit colors
set -g default-terminal "tmux-256color" # or tmux-256color
set -ga terminal-overrides ",*256col*:Tc"
# set -ga terminal-overrides ",xterm-256color:Tc"
# set -ga terminal-overrides 'xterm*:smcup@:rmcup@'

# Recommended by nvim from ':checkhealth'
set-option -sg escape-time 0

# Nord Theme
# Powerline
run-shell "powerline-daemon -q"
# source "$/home/shawn/.config/powerline/themes/tmux///tmux/powerline.conf"
# set -g status-right ''

# set -g @plugin "arcticicestudio/nord-tmux"
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @continuum-save-interval '15'
set -g @continuum-restore 'off'
set -g @plugin 'tmux-plugins/tmux-continuum'
# run -b "~/.config/serious-tmux/serious/plugins/tpm/tpm"

set -g status-right-length 240
set -g status-left-length 140

set -g status-right 'Continuum status: #{continuum_status}'
# set -g status-left 'Continuum status: #{continuum_status}'

set -g status-right "#{pane_current_path}                    "
set -ag status-right "#{prefix_highlight}"
set -ag status-right '#[fg=brightblack,bg=black,nobold,noitalics,nounderscore]#[fg=white,bg=brightblack] Continuum: #{@continuum-restore} #[fg=white,bg=brightblack,nobold,noitalics,nounderscore] '
# run -b "~/.config/serious-tmux/serious/plugins/tpm/tpm"
# run-shell "~/.config/serious-tmux/serious/plugins/nord-tmux/nord.tmux"
# set -ag status-left "#{prefix_highlight}"

# set -g pane-border-status on
set -g pane-border-style "bg=default,fg=default"
set -g pane-active-border-style "bg=default,fg=green"
# Pane naming
# toggle pane title visibility from https://github.com/tmux/tmux/issues/680
bind H run 'zsh -c "arr=( off top ) && tmux setw pane-border-status \${arr[\$(( \${arr[(I)#{pane-border-status}]} % 2 + 1 ))]}"'

# rename pane
bind P command-prompt -p "(rename-pane)" -I "#T" "select-pane -T '%%'"

# Choose Tree
unbind t
bind t choose-tree

# The following 10 lines are all from https://gitlab.com/protesilaos/dotfiles/blob/master/tmux/.tmux.conf
# copy mode
# Vim copy-paste behaviour using the clipboard
# bind -T copy-mode-vi v send-keys -X begin-selection
unbind -T copy-mode-vi v
# bind -T copy-mode-vi y send-keys -X copy-pipe "xclip -selection clipboard -i"
unbind -T copy-mode-vi y
# bind -T copy-mode-vi r send-keys -X rectangle-toggle
unbind -T copy-mode-vi r
# For vi copy mode bindings
# bind -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe "xclip -selection clipboard -i"
unbind -T copy-mode-vi MouseDragEnd1Pane
# For emacs copy mode bindings
# bind -T copy-mode MouseDragEnd1Pane send-keys -X copy-pipe "xclip -selection clipboard -i"
unbind -T copy-mode MouseDragEnd1Pane


# set -g status-utf9 on
# set -ag window-status-current-format "#[fg=black,bg=white,nobold,noitalics,nounderscore]"
# set -ag window-status-current-format "#[fg=black,bg=white]#P #{pane-border-status} #{pane-current-command}"
# set -ag window-status-current-format "#[fg=black,bg=white,nobold,noitalics,nounderscore]"
# set -ag window-status-current-format "#[fg=black,bg=white]#{pane_current_command}"
# set -ag window-status-current-format "#[fg=white,bg=black,nobold,noitalics,nounderscore]"
# set -ag window-status-current-format "#[fg=red,bg=black] #{pane_current_path}"
# set -ag window-status-current-format ' '

# ------------------------------------------------------------------------------
# From https://www.rockyourcode.com/copy-and-paste-in-tmux/
# Use vim keybindings in copy mode
set-option -g mouse on
setw -g mode-keys vi
set-option -s set-clipboard off
bind P paste-buffer
bind-key -T copy-mode-vi v send-keys -X begin-selection
bind-key -T copy-mode-vi y send-keys -X rectangle-toggle
unbind -T copy-mode-vi Enter
bind-key -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel 'xclip -se c -i'
bind-key -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel 'xclip -se c -i'
#
#     <c-a>[ Now Enters copy mode
#     Navigate the copy mode with vi-like-key bindings (u for up, d for down, etc.)
#     Hit v to start copying.
#     Press y or Enter to copy the text into the tmux buffer. This automatically cancels copy mode.
#     Paste into the buffer with <prefix>+P (make sure that it’s uppercase P).
#
# Or alternatively, use the mouse to copy text after you’ve entered copy mode.
#
# The above commands use xclip, a Linux command line tool for X11. You can
# replace xclip -se c -i with a platform-specific command like pbcopy (MacOS) or
# wl-copy (Wayland).