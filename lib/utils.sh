#!/usr/bin/env bash

install_pkg() {
  sudo pacman -S --needed --noconfirm "$@"
}

install_aur_packages() {
  local yay_opts=(
    -S
    --noconfirm
    --needed
    --answerclean None
    --answerupgrade None
    --answerdiff None # Unsafe to set it to None. Change later
    --answeredit None # Unsafe to set it to None. Change later
  )

  if ! command yay --version &>/dev/null; then
    source "$SCRIPT_DIR/install_scripts/aur_helper.sh"
  fi

  yay "${yay_opts[@]}" "$@"
}

symlink() {
  local original_dir=$1
  local sym_dir=$2
  local name=$3

  local backup_dir="$HOME/.config/backup"
  mkdir -p "$backup_dir"

  if [[ -d "$sym_dir/$name" ]] && [[ ! -L "$sym_dir/$name" ]]; then
    mv "$sym_dir/$name" "$backup_dir/$name.$(date +%Y%m%d-%H%M%S)"
  fi

  ln -sfn "$original_dir/$name" "$sym_dir/$name"
}
