#!/bin/bash

cd /usr/local
yum -y install curl dos2unix
sudo curl -s -L "https://download.jetbrains.com/product?code=IIC&latest&distribution=linux" -o idea.tar.gz

tar xvf idea.tar.gz
rm -f idea.tar.gz
mv idea-IC-* idea

cp /tmp/update-scripts/INTELLIJ/config/IntelliJ.desktop /usr/share/applications/IntelliJ.desktop
dos2unix /usr/share/applications/IntelliJ.desktop