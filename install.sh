#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Source the echo functions
source "$(dirname "$0")/scripts/functions/echo_functions.sh"

# Function to display usage information
usage() {
    echo_info "Usage: $0 [options]"
    echo_info "Options:"
    echo_info "  -h, --help          Display this help message."
    exit 0
}

# Parse command-line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -h|--help)
            usage
            ;;
        *)
            echo_error "Unknown option: $1"
            usage
            ;;
    esac
done

# Check if running on Arch Linux or derivatives
if ! command -v pacman &>/dev/null; then
    echo_error "This script is intended for Arch Linux systems."
    exit 1
fi

# Check for root privileges
if [[ $EUID -eq 0 ]]; then
    echo_warn "It is not recommended to run this script as root."
fi

# Directory where the scripts are located
SCRIPT_DIR="$(dirname "$0")/scripts"

# List of scripts to execute in order
SCRIPTS=(
    "install-intel-drivers.sh"
    "install-yay.sh"
    "install-oh-my-zsh.sh"
)

# Iterate over the scripts and execute them
for script in "${SCRIPTS[@]}"; do
    SCRIPT_PATH="$SCRIPT_DIR/$script"
    if [[ -f "$SCRIPT_PATH" ]]; then
        echo_info "Executing $script..."
        bash "$SCRIPT_PATH"
    else
        echo_error "Script $script not found in $SCRIPT_DIR."
        exit 1
    fi
done

echo_info "All scripts executed successfully."

exit 0

