# Set the prefix to ^A
unbind C-b
set -g prefix ^A

# Goyo
bind G set status

# New Window
unbind ^C
bind c new-window -c '#{pane_current_path}' 

#urxvt tab like window switching (-n: no prior escape seq)
bind -n S-down new-window
bind -n S-left prev
bind -n S-right next
bind -n C-left swap-window -t -1
bind -n C-right swap-window -t +1

# zoom a pane into a new window for temporary work
# unbind +
 bind + new-window -d -n tmux-zoom 'clear && echo TMUX ZOOM && read' \; swap-pane -s tmux-zoom.0 \; select-window -t tmux-zoom
# unbind -
 bind - last-window \; swap-pane -s tmux-zoom.0 \; kill-window -t tmux-zoom
#detach ^D d
unbind ^D
bind ^D detach

unbind p
bind p previous-window

# Break pane into it's own window
unbind b
bind b break-pane

# Kill Pane
unbind x
bind x kill-pane
# -a is for all panes except current
bind C-x kill-pane -a

# windows ^W w
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

# vi-style controls for copy-mode
setw -g mode-keys vi
setw -g xterm-keys on

# rename pane
bind P command-prompt -p "(rename-pane)" -I "#T" "select-pane -T '%%'"

# Choose Tree
unbind T
bind T choose-tree

# https://gitlab.com/protesilaos/dotfiles/blob/master/tmux/.tmux.conf
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
