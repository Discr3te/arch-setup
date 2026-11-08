#!/usr/bin/env bash

install_yubico() {
  local package_list=(
    "pam-u2f"
    "libfido2"
    "yubikey-manager"
    "yubikey-full-disk-encryption"
  )

  install_aur_packages yubico-authenticator
  install_pkg "${package_list[@]}"
}

install_yubico
