#!/usr/bin/env bash

install_audio() {
  local audio_packages=(
    "pipewire"
    "wireplumber"
    "pipewire-alsa"
    "pipewire-pulse"
    "wiremix" # TUI
  )

  install_pkg "${audio_packages[@]}"
}

install_audio
