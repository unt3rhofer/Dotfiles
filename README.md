Here is a quick guide on getting started, further information is awailable at the [Dotfiles Wiki](https://github.com/unt3rhofer/Dotfiles/wiki)!

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


---
Read the [Dotfiles Wiki](https://github.com/unt3rhofer/Dotfiles/wiki) for more guides and information!
