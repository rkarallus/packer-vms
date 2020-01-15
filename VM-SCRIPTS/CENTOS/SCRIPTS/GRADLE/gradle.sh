#!/bin/bash
cd /tmp
wget https://services.gradle.org/distributions/gradle-5.4.1-bin.zip

sudo mkdir -p /opt/gradle
sudo unzip -d /opt/gradle gradle-5.4.1-bin.zip

rm /tmp/gradle-*.zip

echo "export PATH=$PATH:/opt/gradle/gradle-5.4.1/bin" >> /home/developer/.bashrc