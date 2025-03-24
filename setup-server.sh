#!/bin/bash

# Install Docker if not installed
if ! command -v docker &> /dev/null
then
    echo "Docker not found. Installing..."
    sudo apt update
    sudo apt install -y docker.io
    sudo systemctl start docker
    sudo systemctl enable docker
else
    echo "Docker is already installed."
fi

# Install Nginx if not installed
if ! command -v nginx &> /dev/null
then
    echo "Nginx not found. Installing..."
    sudo apt update
    sudo apt install -y nginx
    sudo systemctl enable nginx
else
    echo "Nginx is already installed."
fi

# Restart Nginx to apply any configuration changes
sudo systemctl restart nginx
echo "Nginx has been restarted."
