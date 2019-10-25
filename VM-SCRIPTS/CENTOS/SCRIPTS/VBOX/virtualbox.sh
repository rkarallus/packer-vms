#!/bin/bash

yum -y install dkms
yum -y groupinstall "Development Tools"
yum -y install kernel-devel

mkdir -p /mnt/virtualbox
mount -o loop /tmp/VBoxGuestAdditions.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
/sbin/rcvboxadd quicksetup all
ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
umount /mnt/virtualbox
rm -rf /tmp/VBoxGuest*.iso

usermod -aG vboxsf developer
