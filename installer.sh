#!/bin/bash

set -e

DotfilesDir="$HOME/dotfiles"

# Clone repo if not exists
if [ ! -d "$DotfilesDir" ]; then
  git clone https://github.com/PantiesIsStoopid/dotfiles.git "$DotfilesDir"
fi

# Symlink .zshrc
ln -sf "$DotfilesDir/.zshrc" "$HOME/.zshrc"

# List of config folders to link inside ~/.config
Configs=(fastfetch hypr kitty nvim oh-my-posh rofi Wallpapers waybar yazi)

mkdir -p "$HOME/.config"

for Config in "${Configs[@]}"; do
  ln -sf "$DotfilesDir/.config/$Config" "$HOME/.config/$Config"
done

echo "Dotfiles installed and symlinked!"

