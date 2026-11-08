#!/usr/bin/env bash

LOCAL_DIR="$HOME/.local"
mkdir -p "$LOCAL_DIR"
symlink "$DOTFILES_DIR/local" "$LOCAL_DIR" "bin"
