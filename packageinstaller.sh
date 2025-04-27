#!/bin/bash

echo "Enter package name:"
read pkg

if dpkg -l | grep -q "$pkg"; then
    echo "$pkg is already installed."
else
    echo "Installing $pkg..."
    sudo apt update
    sudo apt install -y "$pkg"
fi
