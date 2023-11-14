# Dotfiles repository

This repository contains the dotfiles that I use on my systems.
You can use this configuration on your machine as well, but you'll have
to modify a few settings to make it work.

## Using this configuration

Please make sure you have [chezmoi](https://www.chezmoi.io/) installed on your box.
In addition, you'll need a GIT client to make things work.

After installing chezmoi you can use the following commands to initialize
and install the dotfiles.

```
chezmoi init https://github.com/wmeints/dotfiles.git
chezmoi apply
```
