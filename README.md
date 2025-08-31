# Personal dotfiles

This repository contains my personal dotfiles.
Please use at your own risk. 

## What are dotfiles?

In Linux you'll find that people use filenames and directories starting with a
dot, like `.config` and `.wezterm`. These files and directories are
automatically hidden by file explorers, etc. Often these file contain
configuration information for various tools.

Many tools on Linux use the `/home/<user>/.config` folder to store user
specific configuration information. You may or may not have heard about this
directory depending on how you use Linux.

There's a practice on Linux called ricing, which involves customizing the
configuration of your Linux environment to a high degree. For example, some
people prefer to use a window manager like [hyprland](https://hypr.land)
which requires a lot of configuration but can be made exactly like how you
prefer your computer to behave and look.

I'm one of those people that likes to customize their desktop environment. I do
this for aesthetic reasons and because I want to use my mouse as little as
possible because my hand coordination isn't crazy good.

To help me keep a backup of things, I created this repository. You can use
these files too, but you'll have to tweak them, because I included some
environment-specific information in the config files.

## System Requirements

These dotfiles were created for my Arch Linux installation. You can use these
with other distributions, but I haven't tested them.

Please make sure to have the following tools installed on your system:

- [Wofi](https://github.com/SimplyCEO/wofi)
- [Waybar](https://github.com/Alexays/Waybar)
- [Hyprland](https://hypr.land/)
- [Stow](https://www.gnu.org/software/stow/)
- [Thefuck](https://github.com/nvbn/thefuck)

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
