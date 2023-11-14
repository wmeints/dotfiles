#!/bin/bash

# Install the basics
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git --noconfirm

# Install the yay tool for easier package management
if [[ -d "$HOME/packages/yay"]]; then
  rm -rf $HOME/packages/yay
fi

git clone https://aur.archlinux.org/yay.git ~/packages/yay
pushd ~/packages/yay
makepkg -si --noconfirm
popd

# Install the tools that I use on a daily basis
yay -S --needed --noconfirm aspnet-runtime \
  azure-functions-core-tools-bin \
  dotnet-runtime \
  dotnet-sdk \
  neovim \
  python \
  oh-my-posh-bin \
  unzip \
  wget \
  nvm \
  ripgrep \
  lazygit \
  bottom

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install 18
nvm alias default 18

