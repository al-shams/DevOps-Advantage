#!/usr/bin/env bash
set -e
echo "Updating package lists..."
sudo apt-get update
echo "Installing required packages..."
PACKAGES=(
    vim
    iptables-persistent
    bash-completion
)
sudo apt-get install -y "${PACKAGES[@]}"
echo "Provisioning complete!"