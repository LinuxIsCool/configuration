#-------------------------------------------------------------------------------
# Fish Configuration 
# Started September 14th 2020 by Shawn Anderson
#
# This configuration heavily integrates fish with vim, tmux, fzf, and other
# powerful commandline tools. It's interactive computing for effective 
# workflow.
#-------------------------------------------------------------------------------
source ~/.config/fish/config/abbr.fish
source ~/.config/fish/config/keys.fish
source ~/.config/fish/config/plugins.fish
source ~/.config/fish/config/programs.fish

set -gx GOPATH $HOME/go; set -gx GOROOT $HOME/.go; set -gx PATH $GOPATH/bin $PATH; # g-install: do NOT edit, see https://github.com/stefanmaric/g

export PATH="$PATH:/home/ygg/.foundry/bin"
