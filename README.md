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
configuration of your Linux environment so much that it doesn't look like the
standard configuration anymore.

I'm going back and forth between heavily customized environments and more
standard ones. I currently run Fedora Linux because it's very stable and comes
with a lot of stuff included that I like to use.

I do have some extra packages and tool installed, that require extra
configuration. You can find all of these here in this repository.

## System Requirements

These dotfiles were created for my Arch Linux installation. You can use these
with other distributions, but I haven't tested them.

Please make sure to have the following tools installed on your system:

- [Stow](https://www.gnu.org/software/stow/)
- [Thefuck](https://github.com/nvbn/thefuck)
- [Wezterm](https://wezterm.org/)
- [Eza](https://github.com/eza-community/eza)
- [fzf](https://github.com/junegunn/fzf)
- [Zoxide](https://github.com/ajeetdsouza/zoxide)

You can install these packages using the provided ansible playbook. Make sure
you install Ansible first, and then run the command

```bash
ansible-playbook -K ansible/post-install.yaml
```

## Getting started

Clone this repository to your machine. Use the following commands from the
repository root to link the configuration files into the correct locations.

```shell
stow starship
stow wezterm
stow bash
```

Important: You should use `stow zsh` instead of `stow bash` if you're using
zsh as your shell.

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
- Starship : The custom prompt configuration I use for my shell.
