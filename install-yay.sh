#!/bin/bash

# Clone yay repository
echo "Cloning yay repository..."
git clone https://aur.archlinux.org/yay.git

# Change directory to yay
cd yay

# Build and install yay
echo "Building and installing yay..."
makepkg -si --noconfirm

# Clean up
cd ..
rm -rf yay

# Generate development package database
echo "Generating development package database for development packages..."
yay -Y --gendb

# Check for development package updates
echo "Checking for updates on development packages..."
yay -Syu --devel

# Enable permanent development package updates
echo "Enabling permanent checks for development package updates..."
yay -Y --devel --save

echo "yay installation and configuration complete!"

