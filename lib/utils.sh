#!/usr/bin/env bash

install_pkg() {
  sudo pacman -Syu --needed --noconfirm "$@"
}

install_aur_packages() {
  local -n aur_packags_ref="$1"

  local yay_opts=(
    -Sy
    --noconfirm
    --answerclean None
    --answerupgrade None
    --answerdiff None # Unsafe to set it to None. Change later
    --answeredit None # Unsafe to set it to None. Change later
  )

  if ! command yay --version &>/dev/null; then
    source "$SCRIPT_DIR/install_scripts/aur_helper.sh"
  fi

  yay "${yay_opts[@]}" "${aur_packages_ref[@]}"
}

symlink() {
  local original_dir=$1
  local sym_dir=$2
  local name=$3

  ln -s "$original_dir/$name" "$sym_dir/$name"
}
