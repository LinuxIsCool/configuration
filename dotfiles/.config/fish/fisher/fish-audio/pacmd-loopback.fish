# Defined in /tmp/fish.nJXl9C/pacmd-loopback.fish @ line 1
function pacmd-loopback --description 'Loop a pacmd source into a pacmd sink interactively.'
  if test (set source (pacmd list-sources | grep name: | awk '{ print $2 }' | cut -d'<' -f2 | cut -d'>' -f1 | fzf-tmux --header="Select a source" --phony); set sink (pacmd list-sinks | grep name: | awk '{ print $2 }' | cut -d'<' -f2 | cut -d'>' -f1 | fzf-tmux --header="Select a sink:"); printf "No\nYes" | fzf-tmux --header="CONFIRM: <$source> -> <$sink>") = "Yes"                                                                                                                         
    pacmd load-module module-loopback source=$source sink=$sink                                                                                                                          
  else                                                                                                                                                                                 
    echo "Aborted."                                                                                                                                                                      
  end
end
