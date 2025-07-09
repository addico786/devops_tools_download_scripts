BLUE_TEXT=$'\033[0;94m'
GREEN_TEXT=$'\033[0;92m'

sudo apt-get update
sudo apt-get install docker.io -y
echo "${GREEN_TEXT}${BOLD_TEXT}=======================================${RESET_FORMAT}"
echo "${GREEN_TEXT}${BOLD_TEXT} Docker installed Now restart your terminal and run docker ps  ${RESET_FORMAT}"
echo "${GREEN_TEXT}${BOLD_TEXT}=======================================${RESET_FORMAT}"
sudo usermod -aG docker $USER && newgrp
