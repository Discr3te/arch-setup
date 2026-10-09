#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
CONFIG_DIR="$HOME/.config"
LOCAL_DIR="$HOME/.local"
DOTFILES_DIR="$HOME/.dotfiles"
DOWNLOADS_DIR="$HOME/Downloads"

source "$SCRIPT_DIR/lib/utils.sh"

git clone https://github.com/Discr3te/.dotfiles.git "$DOTFILES_DIR"

mkdir -p "$CONFIG_DIR" "$LOCAL_DIR" "$DOWNLOADS_DIR"

source "$SCRIPT_DIR/local/bin/update_mirrors"

for script in "$SCRIPT_DIR/install_scripts"/*; do
  [ -f "$script" ] && [ -x "$script" ] && source "$script"
done

symlink "$DOTFILES_DIR/local" "$CONFIG_DIR" "bin"

# reboot
