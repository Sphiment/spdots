#!/bin/bash

# Set zsh as the default shell
echo "Setting zsh as the default shell..."
chsh -s $(which zsh)

# Install oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installation complete! Log out and log back in for changes to take effect."
