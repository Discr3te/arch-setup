#!/usr/bin/env bash

install_pkg bluez bluez-tools bluez-utils bluetui

sudo systemctl enable bluetooth.service
