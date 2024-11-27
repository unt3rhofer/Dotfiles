Here is a quick guide on getting started, more information is awailable at the [Dotfiles Wiki](https://github.com/unt3rhofer/Dotfiles/wiki)!

# Clone the Dotfiles repo
All guides assume you have the Dotfiles repo cloned in your home directory.
```bash
git clone https://github.com/unt3rhofer/Dotfiles.git
```

# Yay AUR helper
Yay is a so called "AUR helper" for arch linux's package manager pacman. It provides a broader selection of packages.
## Installation
You can get yay from it's creator GitHub [repo](https://github.com/Jguer/yay).
```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```
That's it, we now have yay installed!
### Cleanup
You can safely remove the yay directory that is in your home directory with:
```bash
rm -fr yay
```
## Syntax guide
**installing a package**
```bash
yay -S package_name
```
**uninstalling a package**
```bash
yay -Rns package_name
```
**cleaning up orphaned packages**
```bash
yay -Yc
```
# Kitty terminal
I like the kitty terminal because of how easy it is to switch themes and ... it's called **kitty**, c'mon.
## Dependencies
* [yay](#yay-aur-helper)
## Installation
```bash
yay -S kitty
```
you can now uninstall xterm if you like
```bash
yay -Rns xterm
```
## Setup
Navigate to the location of your kitty configuration directory. In my case that is:
```bash
cd ~/.config
```
Remove the kitty directory (trust me on this one).
```bash
sudo rm -fr kitty
```
Create a symbolic link to the kitty configuration from the Dotfiles directory.
```bash
sudo ln -sf ~/Dotfiles/kitty ~/.config
```
That's it, kitty is now installed and configured!
### Tips & Tricks
You can choose many other themes for the kitty terminal by running:
```bash
kitten themes
```


---
Read the [Dotfiles Wiki](https://github.com/unt3rhofer/Dotfiles/wiki) for more guides and information!
