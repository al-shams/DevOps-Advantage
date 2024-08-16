#!/usr/bin/env bash
set -e
echo "Updating package lists..."
sudo apt-get update || (sudo apt-get update --fix-missing && sudo apt-get update)
echo "Installing required packages..."
PACKAGES=(
    bash-completion
)
sudo apt-get install -y "${PACKAGES[@]}"
echo "Provisioning complete!"