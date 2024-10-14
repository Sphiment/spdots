#!/bin/bash

source "$(dirname "$0")/functions/echo_functions.sh"

echo_info "Setting zsh as the default shell..."
chsh -s "$(which zsh)"

echo_info "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo_info "Installation complete! Log out and log back in for changes to take effect."

