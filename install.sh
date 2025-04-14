#!/usr/bin/env bash

APPLICATIONS="neovim zen-browser tmux onlyoffice-bin git go"

# clean
echo "Cleaning existing directories"
find ./config -mindepth 1 -maxdepth 1 -type d \
	-execdir rm -rfv ~/.config/{} \;
rm -rfv ~/.bin

# make links
echo "Creating links"
find ./config -mindepth 1 -maxdepth 1 -type d \
	-execdir ln -srdv {} ~/.config/{} \;
ln -srdv bin ~/.bin
