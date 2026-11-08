#!/usr/bin/env bash

install_pkg alacritty ttf-jetbrains-mono-nerd

symlink "$DOTFILES_DIR" "$CONFIG_DIR" "alacritty"
