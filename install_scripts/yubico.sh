#!/usr/bin/env bash

install_yubico() {
  local package_list=(
    "pam-u2f"
    "libfido2"
    "yubikey-manager"
    "yubikey-full-disk-encryption"
  )

  # shellcheck disable=2034
  local aur_package_list=("yubico-authenticator")

  install_aur_packages aur_package_list

  install_pkg "${package_list[@]}"
}

install_yubico
