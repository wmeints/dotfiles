# Install the basics
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git --noconfirm

# Install the yay tool for easier package management
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
  wget
