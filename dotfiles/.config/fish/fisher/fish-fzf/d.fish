# Defined in /tmp/fish.sM92eA/d.fish @ line 2
function d
 __fastdir_dirhist -l -n | awk -v OFS='%s' '{print $2}' | awk '!x[$0]++' | fzf-tmux
end
#test
