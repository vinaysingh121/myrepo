#!/usr/bin/env bash


apt-get update -y;
apt-get install nginx -y;
apt-get install openjdk-8-jdk -y;


wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -;
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list;
sudo apt-get update;
sudo apt-get install jenkins -y;
sudo systemctl start jenkins;
sudo cat /var/lib/jenkins/secrets/initialAdminPassword;
