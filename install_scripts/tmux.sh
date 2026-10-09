#!/usr/bin/env bash

sudo pacman -S --noconfirm --needed tmux

symlink "$DOTFILES_DIR" "$CONFIG_DIR" "tmux"
