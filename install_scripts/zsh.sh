#!/usr/bin/env bash

remove_bash_config_files() {
  local bash_config_files=(
    ".bashrc"
    ".bash_profile"
    ".bash_login"
    ".profile"
    ".bash_logout"
    ".bash_history"
  )

  local files
  for files in "${bash_config_files[@]}"; do
    [ -f "$HOME/$files" ] && rm "$HOME/$files"
  done
}

install_pkg zsh

hash -r

sudo chsh -s "$(which zsh)" "$USER"

sudo tee -a /etc/zsh/zshenv >/dev/null <<'EOF'
if [[ -z $XDG_CONFIG_HOME ]]; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi

if [[ -d "$XDG_CONFIG_HOME/zsh" ]]; then
    export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
fi
EOF

# shellcheck disable=2154
symlink "$DOTFILES_DIR" "$CONFIG_DIR" "zsh"

remove_bash_config_files
