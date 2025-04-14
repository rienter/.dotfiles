#!/usr/bin/env bash

APPLICATIONS="neovim zen-browser tmux onlyoffice-bin git"

find ./config -mindepth 1 -maxdepth 1 -type d \
	-execdir ln -srdv {} ~/.config/{} \;
