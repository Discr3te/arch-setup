#!/usr/bin/env bash

install_pkg tmux

symlink "$DOTFILES_DIR" "$CONFIG_DIR" "tmux"
