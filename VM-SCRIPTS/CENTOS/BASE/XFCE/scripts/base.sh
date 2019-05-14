#!/bin/bash

# Update the box
yum -y install deltarpm
yum -y update
yum -y install epel-release
yum -y groupinstall "X Window system" -y
yum -y groupinstall xfce

yum -y install dos2unix net-tools vim

# Tweak sshd to prevent DNS resolution (speed up logins)
echo "UseDNS no" >> /etc/ssh/sshd_config

cd /home/developer

chown -R developer:developer /home/developer

# auto login
echo "[daemon]" >> /etc/gdm/custom.conf
echo "AutomaticLogin=developer" >> /etc/gdm/custom.conf
echo "AutomaticLoginEnable=true" >> /etc/gdm/custom.conf

# XFCE as default session
echo "[User]" >> /var/lib/AccountsService/users/developer
echo "XSession=xfce" >> /var/lib/AccountsService/users/developer

chmod -x /usr/bin/gnome-keyring-daemon
chmod -x /usr/bin/gnome-keyring

mkdir -p /home/developer/.config
cp -R /tmp/config/xfce4 /home/developer/.config/
chown developer:developer /home/developer/.config

yum -y install curl cabextract xorg-x11-font-utils fontconfig
rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

rpm -e initial-setup initial-setup-gui
systemctl isolate graphical.target
systemctl set-default graphical.target