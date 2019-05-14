#!/bin/bash

# Firefox
yum -y install wget tar
yum -y remove firefox
unlink /usr/bin/firefox
cd /usr/local 
wget --content-disposition "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64"
tar xvjf firefox*.tar.bz2
rm -f firefox*.tar.bz2
ln -s /usr/local/firefox/firefox /usr/bin/firefox
cp /tmp/update-scripts/FIREFOX/config/Firefox.desktop /usr/share/applications/Firefox.desktop
dos2unix /usr/share/applications/Firefox.desktop
