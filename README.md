# Pop-os - Gnome - Tmux - Fish - Vim - FZF - Serious Configuration - Shawn Anderson
These are the dotfiles that I hack on. Can easily be installed to your ~/.config/ by using the gnu stow utility.

<div align="center">
  <img src="https://raw.githubusercontent.com/LinuxIsCool/configuration/master/popos-gnome/Screenshot%20from%202020-09-29%2001-56-33.png"/>
</div>

To install:  
1. Install Requirements
	
	sudo apt install stow xcape fish tmux neovim jq universal-ctags python bat ripgrep tree cmake
	
2. Change default shell to fish
  
	chsh -s \`which fish\`  
	Logout and Login 
	
2. Clone the repo  

	git clone git@github.com:LinuxIsCool/configuration.git  
	
3. Symlink into ~/.config using stow  

	cd configuration  
	sh stow  
	
	
5. Install fisher and fish plugins

	curl -sL https://git.io/fisher | source && fisher install (cat ~/.config/fish/fish_plugins)

	
6. Install neovim plugins (will install fzf)

	nvim  
	:PlugInstall  
	
7. Install autojump

	cd ~/.local/share/  
	git clone git@github.com:wting/autojump.git && cd autojump && python install.py
	
8. Install virtualfish

	pip install virtualfish  
	vf install  
	
9. Install Tmux plugin manager

	git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm  
	tmux  
	prefix + I  
	
10. Install a nerd font like Hack Regular (otf prefered over ttf): 
 
	https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf  
	Terminal -> Preferences -> Text -> Font -> Hack Nerd Regular  
	
11. Make sure essentials is autoloading

	essentials

12. Gnome tweaks
	
	Add week numbers to calendar:  
	gsettings set org.gnome.desktop.calendar show-weekdate true
	
	Add Weekday to panel date:  
	gsettings set org.gnome.desktop.interface clock-show-weekday true
	
	Make alt-tab workspace specific:  
	gsettings set org.gnome.shell.app-switcher current-workspace-only true
	
	Allow switcher when in full screen:  
	Extensions -> Pop Shell Settings -> Allow launcher over fullscreen window  
	
	
# Popos-Gnome
In addition to the script-based configuration, I'll do my best to track and document my debian-gnome-popos settings, to make them as reproducable as possible.

Aesthetic-wise, I'm currently using the Juno-Ocean Gnome theme, as per recommended by @mattcoding4days, and my vim theme is quantum, as per Matt's recommendation as well.

## Installed Extensions
<div align="center">
  <img src="https://raw.githubusercontent.com/LinuxIsCool/configuration/master/popos-gnome/extensions-nov-26-2020.png"/>
</div>
