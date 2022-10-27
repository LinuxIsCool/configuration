# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Tmux Power
set -g @plugin 'linuxiscool/tmux-power'
set -g @tmux_power_theme 'forest' # dark slate blue
set -g @tmux_power_date_icon '🍁' # set it to a blank will disable the icon
set -g @tmux_power_time_icon '⌚' # emoji can be used if your terminal supports
set -g @tmux_power_user_icon '🍄'
set -g @tmux_power_session_icon '✨'
set -g @tmux_power_upload_speed_icon ''
set -g @tmux_power_download_speed_icon ''
set -g @tmux_power_left_arrow_icon ''
set -g @tmux_power_right_arrow_icon ''
set -g @tmux_power_prefix_highlight_pos 'LR'

# Prefix Highlight
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
set -ag status-right "#{prefix_highlight}"

# Initialize Plugins
 run -b "~/.config/tmux/plugins/tpm/tpm"


