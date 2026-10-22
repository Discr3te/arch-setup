#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
CONFIG_DIR="$HOME/.config"
DOTFILES_DIR="$HOME/.dotfiles"
DOWNLOADS_DIR="$HOME/Downloads"

source "$SCRIPT_DIR/lib/utils.sh"

git clone https://github.com/Discr3te/.dotfiles.git "$DOTFILES_DIR"

mkdir -p "$CONFIG_DIR" "$LOCAL_DIR" "$DOWNLOADS_DIR"

for script in "$SCRIPT_DIR/install_scripts"/*; do
  if [[ -f "$script" ]] && [[ -x "$script" ]]; then
    # shellcheck disable=SC1090
    source "$script"
  fi
done

# reboot
