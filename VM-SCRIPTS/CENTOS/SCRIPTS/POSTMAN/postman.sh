#!/bin/bash

yum -y install wget dos2unix
cd /usr/local
wget -q --content-disposition "https://dl.pstmn.io/download/latest/linux64"

tar xvf Postman-linux-*.tar.gz
rm -f Postman-linux-*.tar.gz

cp /tmp/update-scripts/POSTMAN/config/Postman.desktop /usr/share/applications/Postman.desktop
dos2unix /usr/share/applications/Postman.desktop