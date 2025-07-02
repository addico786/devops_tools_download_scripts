echo "################################## installing JAVA ##################################"
sudo apt update
sudo apt install fontconfig openjdk-21-jre
java -version
echo "################################## JAVA installed succesfully ##################################"

echo "################################## installing jenkins ##################################"
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
echo "################################## jenkins installed sucessfully ##################################"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "the above is your temporary password to login to jenkins"
