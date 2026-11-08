#!/usr/bin/env bash
sudo pacman -Syu --noconfirm --needed git || {
  echo "pacman was unable to install git" >&2
  exit 1
}

PROJECTS_DIR="$HOME/Projects"
mkdir -p "$PROJECTS_DIR"

git clone --recurse-submodules https://github.com/Discr3te/arch-setup.git "$PROJECTS_DIR/arch-setup"

pushd "$PROJECTS_DIR/arch-setup" || exit
./install.sh
popd || exit
