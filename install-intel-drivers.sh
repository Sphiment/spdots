#!/bin/bash

# Update system
echo "Updating system..."
sudo pacman -Syu --noconfirm

# Install Intel GPU drivers for 64-bit applications
echo "Installing Intel GPU drivers..."
sudo pacman -S --noconfirm mesa vulkan-intel intel-media-driver

echo "Intel GPU drivers installed successfully!"

