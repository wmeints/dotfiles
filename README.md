# Dotfiles repository

This repository contains the dotfiles that I use on my systems.
You can use this configuration on your machine as well, but you'll have
to modify a few settings to make it work.

## Using this configuration

Please make sure you have [chezmoi](https://www.chezmoi.io/) installed on your box.
In addition, you'll need a GIT client and some essential build tools to make things work.

To install chezmoi use on of the following commands:

* Ubuntu: `sudo snap install chezmoi --classic`
* Arch: `sudo pacman -S chezmoi`

To install GIT and some build essentials:

* Ubuntu: `sudo apt install -y build-essential git`
* Arch: `sudo pacman -S --noconfirm git base-devel`

After installing chezmoi you can use the following commands to initialize
and install the dotfiles.

```
chezmoi init https://github.com/wmeints/dotfiles.git
chezmoi apply
```
