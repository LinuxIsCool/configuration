# Use at your own risk. No warrenties. 
I practice human-in-the-loop computing. This workflow is designed by me to be most effective for me and my life towards my intentions. It wasn't defined with mass scalability in mind. I encourage you to persue the discovery of computing interfaces on your personel journey as well. Please feel free to take inspiration from my workflow and open dialougue in collaboration.  

# Pop-os - Gnome - Tmux - Fish - Vim - FZF - Serious Configuration - Shawn Anderson
These are the dotfiles that I hack on. Can easily be installed to your ~/.config/ by using the gnu stow utility.

They are designed to get a brand new machine installed with https://pop.system76.com/ into a production ready state. For me production means participating in digital platforms, writing code, and editing media. I run a FinTech business in Canada called Longtail Financial, where I am in contract for providing data science and token engineering services. I work with my partner Liam Perison to drive the business towards stability and success. Please contact me if you are interested in funding Canadian Computing Technology that is driving services and products in the domain of finance, web, and computing. We practice Data Science, Token Engineering, and Software Engineering. We co-design products and services with ecoystem partners, primarily in the DAO and Token spaces. 

<div align="center">
  <img src="https://raw.githubusercontent.com/LinuxIsCool/configuration/master/popos-gnome/Screenshot%20from%202020-09-29%2001-56-33.png"/>
</div>

To install:  
-1. Install PopOS: https://pop.system76.com/ 

0. Update System
	```
	sudo apt update && sudo apt upgrade
	```	

1. Install required and recommended utilities.
	```
	sudo apt install stow fish tmux jq python-is-python3 bat ripgrep tree cmake alacritty delta pip  
	```  
	
2. Change default shell to fish
  	```
	chsh -s \`which fish\`  
	Logout and Login 
	```

3. Enable Wayland: https://linuxconfig.org/how-to-enable-disable-wayland-on-ubuntu-22-04-desktop 

4. Remap caps to control and escape with keyd: https://github.com/rvaiya/keyd
	
5. Clone this repo  
	```
	git clone git@github.com:LinuxIsCool/configuration.git  
	```
	
6. Symlink into ~/.config using stow  
	```
	cd configuration  
	sh stow  
	```
	
7. Install fisher and fish plugins (will install nvm)
	```
	curl -sL https://git.io/fisher | source && fisher install (cat ~/.config/fish/fish_plugins)
	```
	
8. Use nvm to install node
	```
	nvm use latest
	```

8. Install g for Go: https://github.com/stefanmaric/g#usage 
	```````
	curl -sSL https://git.io/g-install | sh -s
	g install latest
	```

9. Install blsd
	```
	bass "bash <(curl -fL https://raw.githubusercontent.com/junegunn/blsd/master/install)"
	```
	
5. Install Rust: https://www.rust-lang.org/tools/install  
	```
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	fish_add_path ~/.cargo/bin/
	```
6. Install Nvim using Bob  
	```
	cargo install bob-nvim
	bob complete fish > ~/.config/fish/completions/bob.fish
	fish_add_path ~/.local/share/bob/nvim-bin/
	bob use latest
	```

10. Install neovim plugins (will install fzf)
	```
	nvim  
	:PlugInstall
	```
	
11. Make sure fzf is installed system wide
	```
	cd ~/.config/nvim/plugged/fzf/  
	./install
	```
	
12. Install autojump
	```
	cd ~/.local/share/  
	git clone git@github.com:wting/autojump.git && cd autojump && python install.py
	```

13. Install virtualfish
	```
	pip install virtualfish  
	fish_add_path ~/.local/bin/  
	vf install  
	```
	
14. Install python poetry: https://python-poetry.org/docs/#installation
	```
	curl -sSL https://install.python-poetry.org | python3 -
	```
	
15. Install Tmux plugin manager
	```
	git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm  
	tmux  
	prefix + I  
	```

16. Gnome tweaks

	Setting key repeat and interval:  
	```
	gsettings set org.gnome.desktop.peripherals.keyboard delay 160
	gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 12

	```
	Make launcher work when an app is open in full screen:  
	```
	gsettings set org.gnome.shell.extensions.pop-shell fullscreen-launcher true
	```
	
	Add week numbers to calendar:  
	```
	gsettings set org.gnome.desktop.calendar show-weekdate true
	```
	Add Weekday to panel date:  
	```
	gsettings set org.gnome.desktop.interface clock-show-weekday true
	```
	Make alt-tab workspace specific:  
	```
	gsettings set org.gnome.shell.app-switcher current-workspace-only true
	```
	Allow switcher when in full screen:  
	```
	gsettings set org.gnome.shell.extensions.pop-shell fullscreen-launcher true
	
	or   
	
	Extensions -> Pop Shell Settings -> Allow launcher over fullscreen window  
	```
	
# Popos-Gnome
In addition to the script-based configuration, I'll do my best to track and document my debian-gnome-popos settings, to make them as reproducable as possible.

Aesthetic-wise, I'm currently using the Juno-Ocean Gnome theme, as per recommended by @mattcoding4days, and my vim theme is quantum, as per Matt's recommendation as well.

## Installed Extensions
<div align="center">
  <img src="https://raw.githubusercontent.com/LinuxIsCool/configuration/master/popos-gnome/extensions-nov-26-2020.png"/>
</div>

Blessings 🌟💎🦋💖
