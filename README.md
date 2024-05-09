# Pop-os - Gnome - Tmux - Fish - Vim - FZF - Serious Configuration - Shawn Anderson
These are the dotfiles that I hack on. Can easily be installed to your ~/.config/ by using the gnu stow utility.

They are designed to get a brand new machine installed with https://pop.system76.com/ into a production ready state. For me production means participating in digital platforms, writing code, and editing media. I run a FinTech business in Canada called Longtail Financial, provides data science and token engineering services. I work with partners at LTF to drive the business towards stability and success. This configuration is an optimized build for maximum effectiveness. To learn more about my workflow, follow me on twitter: https://twitter.com/ygg_anderson

The following is a screencapture of The Serious Configuration Framework running in a triple monitor setup. This build should be very easy to pick up for anyone who wishes to be a terminal           oriented power user in linux, and will also feel right at home with a familiar desktop experience for anyone coming from Mac, Windows, or Debian operating systems since it uses the very intuitive Gnome Desktop in the Pop Shell, a fork of the Ubuntu linux distribution. It's the fastest paced work environment for creatives, producers, and technologists who want to simply get things done. 
<div align="center">
  <img src="https://raw.githubusercontent.com/LinuxIsCool/configuration/master/popos-gnome/Screenshot%20from%202020-09-29%2001-56-33.png"/>
</div>


This is the Serious Configuration Framework. Optimized for Simplicity. 


To install:  

0. Install PopOS: https://pop.system76.com/ 

0. Update System
	```
	super+t to open a terminal.
	sudo apt update && sudo apt upgrade
	```	

1. Install necessary utilities.
	```
	sudo apt install stow fish jq python-is-python3 bat ripgrep tree cmake alacritty delta pip python3.10-venv
	```  
2. Set alacritty to default terminal
	```
	super -> keyboard -> custom shortcut -> set super+t as `alacritty`
	```
	
2. Change default shell to fish
  	```
	chsh -s `which fish`  
	```
   	Logout and Login 

	
4. Remap caps to control and escape with keyd: https://github.com/rvaiya/keyd (don't remap escape to caps lock)

3. Enable Wayland: https://linuxconfig.org/how-to-enable-disable-wayland-on-ubuntu-22-04-desktop 
	```
	set -Ux MOZ_ENABLE_WAYLAND 1 # For Firefox in Wayland
	```

	
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
 	nvm install latest
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
	bob use latest
	fish_add_path ~/.local/share/bob/nvim-bin/
	```
16. Install NVChad
	```
	rm -rf ~/.config/nvim  
	rm -rf ~/.local/share/nvim  
	git clone -b v2.0 git@github.com:NvChad/NvChad.git ~/.config/nvim --branch v2.0 --depth 1
	git clone git@github.com:LinuxIsCool/nvchadcustom.git ~/.config/nvim/lua/custom  
	nvim  
 	```
	
11. Make sure fzf is installed system wide
	```
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
	```
	
12. Install autojump
	```
	cd ~/.local/share/  
	git clone https://github.com/wting/autojump.git && cd autojump && python install.py
	```

13. Install virtualfish
	```
	python -m pip install --user virtualfish 
	fish_add_path ~/.local/bin/  
	vf install
	```
	
14. Install python poetry: https://python-poetry.org/docs/#installation
	```
	curl -sSL https://install.python-poetry.org | python3 -
	```
	
15. Install Tmux and Tmux plugin manager (Install tmux version 3.1c in order to have proper behavior with passing ctrl-i independent from <Tab>)
 	```
 	# Install tmux 3.1c
	sudo apt install build-essential libevent-dev libncurses-dev yacc
	wget https://github.com/tmux/tmux/releases/download/3.1c/tmux-3.1c.tar.gz -O /tmp/tmux-3.1c.tar.gz
	tar -xzf /tmp/tmux-3.1c.tar.gz -C /tmp
	cd /tmp/tmux-3.1c
	./configure && make
	sudo make install

	# Install tmux plugin manager
 	git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm  
	tmux  
	prefix + I  
	```



18. Gnome tweaks (Optional)

	Setting key repeat and interval:  
	```
	gsettings set org.gnome.desktop.peripherals.keyboard delay 140
	gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 11
	```
	
	Make launcher work when an app is open in full screen:  
	```
	gsettings set org.gnome.shell.extensions.pop-shell fullscreen-launcher true
	```
	
	Make alt-tab workspace specific:  
	```
	gsettings set org.gnome.shell.app-switcher current-workspace-only true
	```
	
	Add week numbers to calendar:  
	```
	gsettings set org.gnome.desktop.calendar show-weekdate true
	```
	
	Add Weekday to panel date:  
	```
	gsettings set org.gnome.desktop.interface clock-show-weekday true
	```
	
	Set background opacity for dash to dock:  
	```
	gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.4
	```
	
19. Install Gnome Extensions (Optional).
Here is an example of some extensions that I use:
![image](https://github.com/LinuxIsCool/configuration/assets/31582215/7f06581f-5938-48da-8c16-e4e5be20dc54)
Older:
<div align="center">
  <img src="https://raw.githubusercontent.com/LinuxIsCool/configuration/master/popos-gnome/extensions-nov-26-2020.png"/>
</div>



22. Load Dconf settings (Optional): https://bgstack15.wordpress.com/2017/10/04/dconf-save-and-load-from-file/ 
```
# Load Settings
dconf load / < popos-gnome/dconf/settings.dconf

# To Dump Settings 
dconf dump / > popos-gnome/dconf/settings.dconf
```

23. Load Dash to Panel Settings (Optional): https://github.com/home-sweet-gnome/dash-to-panel/issues/517 
```
# Load settings
 dconf load /org/gnome/shell/extensions/dash-to-panel/ < popos-gnome/dconf/dash_to_panel.settings

# To Dump Settings
dconf dump /org/gnome/shell/extensions/dash-to-panel/ > popos-gnome/dconf/dash_to_panel.settings
```


24. Load custom keybaord mappings and shortcuts (Optional):
* Hide all windows: super+d
* Workspaces: super+w
* Open Calendar: super+c
* Open Gmail: super+g
* Open Files: super+f
* Open Browser: super+b
* Open Terminal: super+t
* In the future: https://jb.rainsberger.ca/permalink/remap-keys-on-system76-less-painfully  
* Also good resource: https://jb.rainsberger.ca/permalink/remap-keys-on-system76-less-painfully 


25. Install Apps and Programs through Pop Shop (Optional):
* OBS, Discord, Telegram, Lutris, Slack, Spotify, Clementine, QDirStat, Zoom


26. Install Firefox Plugins (Optional):
* Video Speed Controller
* Add Blocker Plus
* Metamask
* ETH Gas Station


 27. Update wallpaper:



```
More Coming  Soon...
```

### Notes
* Fonts used can be found in alacritty.yml, and fonts are cached in .local/share/fonts/ in this repository. Make sure to use a patched nerd font with emoji support.
* Vim theme is vim-quantum https://github.com/tyrannicaltoucan/vim-quantum
* Fish prompt is inspired by gentoo theme: https://github.com/ribugent/theme-gentoo 
* Gnome themes available here: https://www.gnome-look.org/browse/ 
* Gnome extensions available here: https://extensions.gnome.org/
* This looks like a good resource: https://linuxconfig.org/introduction-to-the-dconf-configuration-system  

Use at your own risk. No warrenties. I practice human-in-the-loop computing. This workflow is designed by me to be most effective for me and my life and my intentions. It wasn't defined with mass adoption in mind. I encourage you to persue the discovery of computing interfaces on your personel journey as well. Please feel free to take inspiration from my workflow and open dialougue in collaboration.  

Blessings 🌟💎🦋💖
