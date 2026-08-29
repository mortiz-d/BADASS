#!/usr/bin/env bash
set -euo pipefail

sudo add-apt-repository -y ppa:gns3/ppa
sudo apt update
sudo apt install -y gns3-gui gns3-server

#Gave permision to gns3 to create virtual bridges
TARGET_USER="${SUDO_USER:-$USER}"
sudo usermod -aG ubridge "$TARGET_USER"