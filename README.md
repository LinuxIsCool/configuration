# Dotfiles of Shawn Anderson
A repository the dotfiles that I hack on. Can easily be installed to your ~/.config/ by using the gnu stow utility.

To install:  
1. Clone the repo  

	git clone git@github.com:LinuxIsCool/dotfiles.git  
	
2. Symlink into ~/.config using stow  

	cd dotfiles  
	sh stow
	
	
# Popos-Gnome
In addition to the script-based configuration, I'll do my best to track and document my debian-gnome-popos settings, to make them as reproducable as possible.

# Keyboard-driven screenshoting
I used the following mnemonics for shortcuts across my system. I use alt-u as the base for screenshots because function-u is the default print-screen on my keyboard.

| Key                            | Shift | Ctrl        | Super  | Alt    |
|--------------------------------|-------|-------------|--------|--------|
| Mnemonic                       | Move  | Select Area | Window | Screen |
|--------------------------------|-------|-------------|--------|--------|
| Screenshot Area to Clipboard   | *     | *           |        |        |
| Screenshot Window to Clipboard | *     |             | *      |        |
| Screenshot Screen to Clipboard | *     |             |        | *      |
| Screenshot Area to Pictures    |       | *           |        |        |
| Screenshot Window to Pictures  |       |             | *      |        |
| Screenshot Screen to Pictures  |       |             |        | *      |


![screenshot_keys.png](popos-gnome/screenshot_keys.png)
