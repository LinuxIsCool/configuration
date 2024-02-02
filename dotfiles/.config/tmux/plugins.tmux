# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Tmux Net Speed
# set -g @plugin 'xamut/tmux-network-bandwidth'

# Tmux Power
set -g @plugin 'linuxiscool/tmux-power'
#set -g @tmux_power_theme 'moon' # dark slate blue
set -g @tmux_power_theme 'forest' # dark slate blue
#set -g @tmux_power_date_icon '☃️ ☃️ ☃️  February' # set it to a blank will disable the icon
set -g @tmux_power_date_icon '🍂  %A %B %d' # set it to a blank will disable the icon
set -g @tmux_power_time_icon '⌚' # emoji can be used if your terminal supports
#set -g @tmux_power_user_icon '🀄'
set -g @tmux_power_user_icon '🍄'
set -g @tmux_power_session_icon '✨'
set -g @tmux_power_upload_speed_icon ''
set -g @tmux_power_download_speed_icon ''
set -g @tmux_power_left_arrow_icon ''
set -g @tmux_power_right_arrow_icon ''
set -g @tmux_power_prefix_highlight_pos 'LR'

set -g @tmux_power_show_upload_speed false
set -g @tmux_power_show_download_speed false

# Prefix Highlight
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
set -ag status-right "#{prefix_highlight}"

# Tmux Text Macros for Emojis!
set -g @plugin 'linuxiscool/tmux-text-macros'

# Tmux FZF
set -g @plugin 'sainnhe/tmux-fzf'

# Tmux chatgpt
# set -g @plugin '/home/ygg/Repos/tmux-chatgpt'
# unbind-key -n C-g

# Tmux Yank
set -g @plugin 'tmux-plugins/tmux-yank'

# Tmux Copy
set -g @plugin 'tmux-plugins/tmux-copycat'

# Initialize Plugins
 run -b "~/.config/tmux/plugins/tpm/tpm"
