# Powerline
# run-shell "powerline-daemon -q"
# source "$/home/shawn/.config/powerline/themes/tmux///tmux/powerline.conf"
# set -g status-right ''

# Nord
# set -g @plugin "arcticicestudio/nord-tmux"
# run-shell "~/.config/serious-tmux/serious/plugins/nord-tmux/nord.tmux"

# Prefix Highlight
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
set -ag status-right "#{prefix_highlight}"

# Save state
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @continuum-save-interval '15'
set -g @continuum-restore 'off'
set -g status-right 'Continuum status: #{continuum_status}'

# Spotify
set -g @plugin 'pwittchen/tmux-plugin-spotify'
#{spotify_status_full}, #{spotify_status}, #{spotify_song}, #{spotify_artist}, #{spotify_album}, #{spotify_playback}
set -g status-right '#{spotify_status_full}'

# Initialize Plugins
 run -b "~/.config/tmux/plugins/tpm/tpm"
