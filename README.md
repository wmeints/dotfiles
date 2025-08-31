# Personal dotfiles

This repository contains my personal dotfiles.
Please use at your own risk. 

## System Requirements

These dotfiles were created for my Arch Linux installation. You can use these
with other distributions, but I haven't tested them.

Please make sure to have the following tools installed on your system:

- [Wofi](https://github.com/SimplyCEO/wofi)
- [Waybar](https://github.com/Alexays/Waybar)
- [Hyprland](https://hypr.land/)
- [Stow](https://www.gnu.org/software/stow/)

## Getting started

Clone this repository to your machine. Use the following commands from the
repository root to link the configuration files into the correct locations.

```shell
stow wofi
stow waybar
stow hyprland
stow scripts
```

## Documentation

### Why use Stow?

This repository uses Gnu Stow to merge configuration files from the various
sub folders into the `~/.config` directory. This tool creates symbolic links
in the target directory. So you could argue: why not create symbolic links
myself? Of course you could do that, but stow makes the whole process a lot
nicer to work with.

### What is included?

I included configuration for the following tools:

- Hyprland : The Window manager I use on my desktop.
- Waybar : The statusbar I use in the Hyprland environment.
- Wofi : The menu tool I use for the power menu and application launcher.
- Bash : The shell I use when doing things in the terminal.
