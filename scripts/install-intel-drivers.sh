#!/bin/bash

source "$(dirname "$0")/functions/echo_functions.sh"

echo_info "Installing Intel GPU drivers..."
sudo pacman -S --noconfirm mesa vulkan-intel intel-media-driver
echo_info "Intel GPU drivers installed successfully!"

