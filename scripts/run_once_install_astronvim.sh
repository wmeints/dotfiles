#!/bin/bash

# Automatically create a backup of the current neovim configuration.
# We keep only one copy of the configuration files backup.
if [ -d "~/.config/nvim"]
  rm -rf ~/.config/nvim.bak
  mv ~/.config/nvim ~/.config/nvim.bak
fi

# This clones the default files for astronvim to the configuration location.
# In addition to the base files, you'll need my config customizations. This
# is the second set of configuration files that are cloned.
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git clone https://github.com/wmeints/astronvim-config ~/.config/nvim/lua/user
