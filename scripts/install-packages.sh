#!/usr/bin/env bash
set -e
sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm hyprland waybar kitty fish wofi mako swww \
  xdg-desktop-portal-hyprland xdg-desktop-portal pipewire wireplumber \
  pipewire-pulse pipewire-alsa networkmanager base-devel git unzip \
  ttf-jetbrains-mono noto-fonts noto-fonts-emoji

# optional dev tools
sudo pacman -S --noconfirm docker docker-compose kubectl git openssh neovim

# enable services
sudo systemctl enable --now NetworkManager
sudo systemctl enable --now docker
# enable user pipewire later after login:
# systemctl --user enable --now pipewire pipewire-pulse wireplumber
