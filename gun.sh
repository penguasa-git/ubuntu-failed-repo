#!/bin/bash

# Backup existing sources.list files
sudo mv /etc/apt/sources.list /etc/apt/sources.list.backup
sudo mv /etc/apt/sources.list.d /etc/apt/sources.list.d.backup

# Create a new sources.list.d directory
sudo mkdir /etc/apt/sources.list.d

# Copy the example sources.list file to /etc/apt/sources.list
sudo cp /usr/share/doc/apt/examples/sources.list /etc/apt/sources.list

# Update package information
sudo apt update

# Add additional repositories
sudo add-apt-repository restricted
sudo add-apt-repository multiverse
sudo add-apt-repository universe

# Update package information again
sudo apt update
