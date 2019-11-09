#!/bin/bash

# Update the box
yum -y install deltarpm
yum -y update
yum -y install epel-release
yum -y groupinstall "X Window system" -y
yum -y groupinstall "GNOME Desktop"
yum -y erase gnome-classic-session

yum -y install file-roller gedit p7zip terminator dos2unix net-tools vim multitail

# Tweak sshd to prevent DNS resolution (speed up logins)
echo "UseDNS no" >> /etc/ssh/sshd_config

cd /home/developer

chown -R developer:developer /home/developer

# auto login
echo "[daemon]" >> /etc/gdm/custom.conf 
echo "AutomaticLogin=developer" >> /etc/gdm/custom.conf
echo "AutomaticLoginEnable=true" >> /etc/gdm/custom.conf

chmod -x /usr/bin/gnome-keyring-daemon
chmod -x /usr/bin/gnome-keyring

mkdir -p /home/developer/.config
cp /tmp/config/user-dirs.defaults /etc/xdg/user-dirs.defaults 
cp /tmp/config/user-dirs.dirs /home/developer/.config/user-dirs.dirs
cp -R /tmp/config/dconf /home/developer/.config/dconf
chown developer:developer /home/developer/.config

yum -y install curl cabextract xorg-x11-font-utils fontconfig
rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

rpm -e initial-setup initial-setup-gui
systemctl isolate graphical.target
systemctl set-default graphical.target