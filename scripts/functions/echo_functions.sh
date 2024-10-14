#!/bin/bash

# Text colors for informational output
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
RESET="\e[0m"

# Function to display informational messages
echo_info() {
    echo -e "${GREEN}[INFO]${RESET} $1"
}

# Function to display warning messages
echo_warn() {
    echo -e "${YELLOW}[WARN]${RESET} $1"
}

# Function to display error messages
echo_error() {
    echo -e "${RED}[ERROR]${RESET} $1" >&2
}

