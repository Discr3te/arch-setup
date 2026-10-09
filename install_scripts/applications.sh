#!/usr/bin/env bash

install_apps() {
  local application_list=(
    "firefox"
    "pipewire-jack"     # dependency: firefox
    "grim"              # screenshot
    "slurp"             # screenshot
    "satty"             # screenshot
    "btop"              # resource monitoring
    "mako"              # notification daemon
    "nautilus"          # file manager
    "fuzzel"            # application launcher
    "dosfstools"        # dependency: fuzzel
    "gimp"              # drawing tool
    "libreoffice-still" # office suite
    "freecad"           # cad software
    "discord"
    "spotify-launcher"
    "unzip"
  )

  # shellcheck disable=2034
  local aur_application_list=("orca-slicer-bin")

  install_aur_packages aur_application_list

  install_pkg "${application_list[@]}"
}

install_apps

symlink "$DOTFILES_DIR" "$CONFIG_DIR" "fuzzel"
symlink "$DOTFILES_DIR" "$CONFIG_DIR" "mako"
# symlink "$DOTFILES_DIR" "$CONFIG_DIR" "wlogout "
