# Powerline
# run-shell "powerline-daemon -q"
# source "$/home/shawn/.config/powerline/themes/tmux///tmux/powerline.conf"
# set -g status-right ''

set -g @tmux_power_theme '#483D8B' # dark slate blue
#set -g @tmux_power_date_icon ' ' # set it to a blank will disable the icon
set -g @tmux_power_time_icon '🕘' # emoji can be used if your terminal supports
set -g @tmux_power_user_icon '🍄'
#set -g @tmux_power_session_icon 'S'
#set -g @tmux_power_upload_speed_icon '↑'
#set -g @tmux_power_download_speed_icon '↓'
#set -g @tmux_power_left_arrow_icon '<'
#set -g @tmux_power_right_arrow_icon '>'

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Nord
# set -g @plugin "arcticicestudio/nord-tmux"
# run-shell "~/.config/serious-tmux/serious/plugins/nord-tmux/nord.tmux"

# Tmux Power
set -g @tmux_power_theme 'default'
set -g @plugin 'wfxr/tmux-power'

# Prefix Highlight
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
set -ag status-right "#{prefix_highlight}"

# Save state
#set -g @plugin 'tmux-plugins/tmux-resurrect'
#set -g @plugin 'tmux-plugins/tmux-continuum'
#set -g @continuum-save-interval '15'
#set -g @continuum-restore 'off'
#set -g status-right 'Continuum status: #{continuum_status}'

# Spotify
set -g @plugin 'pwittchen/tmux-plugin-spotify'
#{spotify_status_full}, #{spotify_status}, #{spotify_song}, #{spotify_artist}, #{spotify_album}, #{spotify_playback}
set -g status-right '#{spotify_status_full}'

# Initialize Plugins
 run -b "~/.config/tmux/plugins/tpm/tpm"
