#!/bin/bash

# @author Tyrell Perera 

# Configure local apt repository for the Hypriot's Docker distro
echo "Configuring local apt repository"
sudo apt-get install -y apt-transport-https
wget -q https://packagecloud.io/gpg.key -O - | sudo apt-key add -
echo 'deb https://packagecloud.io/Hypriot/Schatzkiste/debian/ wheezy main' | sudo tee /etc/apt/sources.list.d/hypriot.list
sudo apt-get update

# Install Docker
echo "Starting Docker installation"
sudo apt-get install -y docker-hypriot

# Enable the Docker service
echo "Enabling Docker service"
sudo systemctl enable docker

# Adding the pi user to the docker group
echo "Adding user pi to docker group"
sudo usermod -aG docker pi

# Verification
echo "Confirming Docker version"
docker version
echo "Running ARM version of Docker hello-world"
docker run armhf/hello-world
