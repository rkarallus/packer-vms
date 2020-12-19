#!/bin/bash
apt-get -y install build-essential dkms linux-headers-generic 

mkdir -p /mnt/virtualbox
mount -o loop /tmp/VBoxGuestAdditions.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
/sbin/rcvboxadd quicksetup all
ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
umount /mnt/virtualbox
rm -rf /tmp/VBoxGuest*.iso

usermod -aG vboxsf ubuntu