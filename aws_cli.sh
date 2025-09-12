#!/bin/bash

#####################################################
echo "Installing AWS CLI"
#####################################################
sudo apt-get update
sudo apt-get install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

#####################################################
echo " AWS CLI installed"
#####################################################