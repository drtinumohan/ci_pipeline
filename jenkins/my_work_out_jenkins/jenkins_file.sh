#!/bin/bash
apt-get install curl -y
curl -fsSL http://pkg.jenkins.io/debian/jenkins.io-2023.key | tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  http://pkg.jenkins.io/debian binary/ | tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null