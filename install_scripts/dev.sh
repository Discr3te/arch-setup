#!/usr/bin/env bash

install_dev() {
  local packages=(
    "base-devel"
    "less"
    "npm"
    "git"
  )

  install_pkg "${packages[@]}"
}

install_dev

symlink "$DOTFILES_DIR" "$CONFIG_DIR" "git"
