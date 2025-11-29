#!/usr/bin/env bash
# Autostart for Hyprland (make executable)
# swww sets wallpaper
swww init
swww img "$HOME/Pictures/wallpapers/wall.jpg" &

# notification daemon
mako &

# waybar
waybar --config "$HOME/.config/waybar/config" &

# start ssh-agent
eval $(ssh-agent -s) &

# start pipewire user services (if not enabled system-wide)
systemctl --user start pipewire pipewire-pulse wireplumber || true
