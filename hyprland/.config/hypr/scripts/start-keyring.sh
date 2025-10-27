#!/bin/bash

# Export gnome-keyring socket location
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/keyring/ssh"

# Make variables available to systemd and dbus
dbus-update-activation-environment --all
systemctl --user import-environment SSH_AUTH_SOCK
