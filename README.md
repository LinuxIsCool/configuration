# Pop-os - Gnome - Tmux - Fish - Vim - FZF - Serious Configuration - Shawn Anderson
These are the dotfiles that I hack on. Can easily be installed to your ~/.config/ by using the gnu stow utility.

They are designed to get a brand new machine installed with https://pop.system76.com/ into a production ready state. For me production means participating in digital platforms, writing code, and editing media. I run a FinTech business in Canada called Longtail Financial, provides data science and token engineering services. I work with partners at LTF to drive the business towards stability and success. This configuration is an optimized build for maximum effectiveness. To learn more about my workflow, follow me on twitter: https://twitter.com/ygg_anderson

The following is a screencapture of The Serious Configuration Framework running in a triple monitor setup. This build should be very easy to pick up for anyone who wishes to be a terminal           oriented power user in linux.
<div align="center">
  <img src="https://raw.githubusercontent.com/LinuxIsCool/configuration/master/popos-gnome/Screenshot%20from%202020-09-29%2001-56-33.png"/>
</div>

To install:  
-1. Install PopOS: https://pop.system76.com/ 

0. Update System
	```
	super+t to open a terminal.
	sudo apt update && sudo apt upgrade
	```	

1. Install necessary utilities.
	```
	sudo apt install stow fish tmux jq python-is-python3 bat ripgrep tree cmake alacritty delta pip  
	```  
2. Set alacritty to default terminal
	```
	super -> keyboard -> custom shortcut -> set super+t as `alacritty`
	```
	
2. Change default shell to fish
  	```
	chsh -s \`which fish\`  
	Logout and Login 
	```
	
4. Remap caps to control and escape with keyd: https://github.com/rvaiya/keyd

3. Enable Wayland: https://linuxconfig.org/how-to-enable-disable-wayland-on-ubuntu-22-04-desktop 

	
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
	```
	curl -sSL https://git.io/g-install | sh -s
	g install latest
	```

9. Install blsd: https://github.com/junegunn/blsd
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
	gsettings set org.gnome.desktop.peripherals.keyboard delay 175
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
	```
	
17. Install Gnome Extensions. Here is an example of some extensions that I use:
<div align="center">
  <img src="https://raw.githubusercontent.com/LinuxIsCool/configuration/master/popos-gnome/extensions-nov-26-2020.png"/>
</div>

18. Load Dconf to load gnome extension tweaks
```
Coming  Soon...
```

19. Load custom keybaord mappings and shortcuts
```
Coming  Soon...
```

20. Install Apps and Programs
```
Coming  Soon...
```

### Notes
* Fonts used can be found in alacritty.yml, and fonts are cached in .local/share/fonts/ in this repository. Make sure to use a patched nerd font with emoji support.
* Vim theme is vim-quantum https://github.com/tyrannicaltoucan/vim-quantum
* Fish prompt is inspired by gentoo theme: https://github.com/ribugent/theme-gentoo 
* Gnome themes available here: https://www.gnome-look.org/browse/ 
* Gnome extensions available here: https://extensions.gnome.org/

Use at your own risk. No warrenties. I practice human-in-the-loop computing. This workflow is designed by me to be most effective for me and my life and my intentions. It wasn't defined with mass adoption in mind. I encourage you to persue the discovery of computing interfaces on your personel journey as well. Please feel free to take inspiration from my workflow and open dialougue in collaboration.  

Blessings 🌟💎🦋💖
