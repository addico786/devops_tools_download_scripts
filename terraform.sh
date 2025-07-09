#!/bin/bash

echo "======================================="
echo "#################### installing Terraform ####################"
echo "======================================="


wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install terraform -y

terraform --version

echo "======================================="
echo "#################### Terraform Installed ####################"
echo "======================================="

sudo rm -rfv terraform.sh

echo "file removed terraform.sh"
