#!/usr/bin/env bash
set -euo pipefail

#Install docker if not installed
if command -v docker >/dev/null 2>&1; then
    echo "Docker already installed: $(docker --version)"
else
    sudo apt update
    sudo apt install -y docker.io
fi

sudo systemctl enable --now docker

#Added permision to GN3S to create nodes
TARGET_USER="${SUDO_USER:-$USER}"
sudo usermod -aG docker "$TARGET_USER"