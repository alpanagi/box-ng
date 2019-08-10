#!/usr/bin/env bash

if [ "$1" == "arch" ]; then
  echo "test"
  function update_system {
    pacman -Syu
  }

  function install {
    pacman -S "$@"
  } 
else
  echo "Usage: frankie.sh arch"
  exit 1
fi

echo "Updating system"
update_system

echo "Installing packages"
install blender chromium docker docker-compose filezilla firefox gimp jdk-openjdk jq maven neovim nmap nodejs npm openssh p7zip python python-pip ripgrep tmux tree virtualbox wget

# AUR packages like: intellij-idea-ultimate-edition ?

echo "Create workspace directory"
mkdir -p ~/workspace
