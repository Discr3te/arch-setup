#!/usr/bin/env bash

install_waybar() {
  local runtime_dependencies=(
    "grim"      # screenshot
    "slurp"     # screenshot
    "satty"     # screenshot
    "fuzzel"    # power menu
    "libnotify" # library to send notifications
  )

  local dependencies=(
    "git"
    "base-devel"
    "gtkmm3"
    "jsoncpp"
    "libsigc++"
    "fmt"
    "wayland"
    "chrono-date"
    "spdlog"
    "libxkbcommon"
    "upower"
    "gtk3"
    "libpulse"
    "libnl"
    "libappindicator"
    "libdbusmenu-gtk3"
    "libmpdclient"
    "sndio"
    "libevdev"
    "cmake"
    "meson"
    "scdoc"
    "wayland-protocols"
    "glib2-devel"
    "gobject-introspection"
    "libgirepository"
  )

  local all_dependencies=("${runtime_dependencies[@]}" "${dependencies[@]}")

  install_pkg "${all_dependencies[@]}"

  git clone https://github.com/Alexays/Waybar "$DOWNLOADS_DIR/waybar"
  pushd "$DOWNLOADS_DIR/waybar" || exit
  meson setup build -Drfkill=enabled -Dcava=disabled
  ninja -C build
  sudo ninja -C build install
  popd || exit
}

install_waybar

symlink "$DOTFILES_DIR" "$CONFIG_DIR" "waybar"
