
sudo apt-get update
sudo apt-get install docker.io -y
echo "======================================="

echo " Docker installed Now restart your terminal and run docker ps "

echo "======================================="
sudo usermod -aG docker $USER && newgrp
