#!/usr/bin/env bash

install_neovim() {
  local dependencies=(
    "tree-sitter-cli"
    "wl-clipboard"
    "unzip"
    "wget"
    "curl"
    "gzip"
    "tar"
    "bash"
    "git"
  )

  install_pkg neovim "${dependencies[@]}"
}

install_neovim

symlink "$DOTFILES_DIR" "$CONFIG_DIR" "nvim"
