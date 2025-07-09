#!/bin/bash

echo "======================================="
echo "################################## installing JAVA ##################################"
echo "======================================="
sudo apt update
sudo apt install fontconfig openjdk-21-jre -y
java -version
echo "======================================="
echo "################################## JAVA installed succesfully ##################################"
echo "======================================="

echo "======================================="
echo "################################## installing jenkins ##################################"
echo "======================================="
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
echo "======================================="
echo "################################## jenkins installed sucessfully ##################################"
echo "======================================="

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo "the above is your temporary password to login to jenkins"

echo "open localhost:8080 in your browser and paste the temporary password"

sudo rm -rfv jenkins.sh
echo "file removed jenkins.sh"