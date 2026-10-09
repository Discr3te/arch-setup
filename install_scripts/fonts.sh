#!/usr/bin/env bash

install_fonts() {
  local fonts=(
    "ttf-jetbrains-mono-nerd"
    "ttf-nerd-fonts-symbols"
    "otf-font-awesome"
    "noto-fonts-cjk"
    "noto-fonts-emoji"
    "terminus-font"
  )

  install_pkg "${fonts[@]}"
}

install_fonts
