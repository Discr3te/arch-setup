#!/usr/bin/env bash

install_aur_helper() {
  local dependencies=(
    "git"
    "base-devel"
  )

  if ! command yay --version &>/dev/null; then
    install_pkg "${dependencies[@]}"

    git clone https://aur.archlinux.org/yay.git "$DOWNLOADS_DIR/yay"
    pushd "$DOWNLOADS_DIR/yay" || exit
    makepkg -si --noconfirm
    popd || exit
  else
    echo "AUR helper (yay) already installed."
  fi
}

install_aur_helper
