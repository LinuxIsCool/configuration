# Key Bindings

# Edit config.fish with alt-e
bind \ee '$EDITOR ~/.config/fish/config.fish' 

# Reload fish config with alt-r
bind \er 'exec fish'                          

# Replace readline <C-d> with <C-g> because <C-d> also exits shells.
# Note: Consider alternatives
bind \cg delete-char

# What does this do relative to the above?
bind \cd delete

# Replace <C-a> with <Alt-a> because <C-a> is used as tmux leader key.
# Note: Consider alternatives
bind \ea beginning-of-line                    

