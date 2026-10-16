#!/usr/bin/env bash

install_hypr_ecosystem() {
  local hypr_package_list=(
    "hyprland"
    "hyprlock"
    "hyprpaper"
    "hypridle"
    "hyprpolkitagent"
    "xdg-desktop-portal-hyprland"
  )
  local dependencies=(
    "wayland"
    "wayland-protocols"
    "xorg-xwayland"
  )

  local combined_packages=("${hypr_package_list[@]}" "${dependencies[@]}")

  install_pkg "${combined_packages[@]}"
}

install_hypr_ecosystem

systemctl --user enable hyprpolkitagent

symlink "$DOTFILES_DIR" "$CONFIG_DIR" "hypr"
symlink "$DOTFILES_DIR" "$CONFIG_DIR" "wallpapers"
