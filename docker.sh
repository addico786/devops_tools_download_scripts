sudo apt-get update
sudo apt-get install docker.io -y
echo "######################################################## now restart your terminal and then run docker ps ########################################################"
sudo usermod -aG docker $USER && newgrp
