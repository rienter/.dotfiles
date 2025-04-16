#!/usr/bin/env bash

APPLICATIONS="neovim zen-browser tmux onlyoffice-bin git go otf-commit-mono-nerd swaybg brightnessctl spotify-launcher"

# TODO applications installation

# To make this more flexible, I'm going to read installation command from arguments.
# Example:
# On Arch Linux (and derivatives)
#
# ./install.sh pacman -S

if [ "$#" -gt 0 ]; then
    pm_cmd=$@
    sudo ${pm_cmd} $APPLICATIONS
    exit 0
fi

# Message in case no argument was given
cat << EndOfMessage
Usage:

    ./install.sh <package manager install command>

For example on Arch Linux:

    ./install.sh pacman -S
EndOfMessage
