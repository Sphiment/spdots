#!/bin/bash

source "$(dirname "$0")/functions/echo_functions.sh"

echo_info "Building and installing yay..."
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

echo_info "Generating development package database for development packages..."
yay -Y --gendb

echo_info "Checking for updates on development packages..."
yay -Syu --devel

echo_info "Enabling permanent checks for development package updates..."
yay -Y --devel --save

echo_info "yay installation and configuration complete!"

