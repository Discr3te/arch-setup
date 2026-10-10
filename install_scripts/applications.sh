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
    "cryptsetup "       # dependency: fuzzel (LUKS)
    "dosfstools"        # dependency: fuzzel (format FAT)
    "ntfs-3g"           # dependency: fuzzel (format ntfs)
    "ntfsprogs"         # dependency: fuzzel (format ntfs)
    "gimp"              # photo editing software
    "libreoffice-still" # office suite
    "freecad"           # cad software
    "discord"
    "spotify-launcher"
    "unzip"
  )

  install_aur_packages orca-slicer-bin
  install_pkg "${application_list[@]}"
}

install_apps

symlink "$DOTFILES_DIR" "$CONFIG_DIR" "fuzzel"
symlink "$DOTFILES_DIR" "$CONFIG_DIR" "mako"
# symlink "$DOTFILES_DIR" "$CONFIG_DIR" "wlogout "
