# Overview
This setup script generates a base VM with the latest CentOS7 and XFCE as window manager. 

They keyboard default is en-US but can be changed using the CTRL + SHIFT keys (to de-DE)

# Preconditions
Packer is required in your path. The recommended version is packer 1.4.0 or higher.

Virtualbox 6.0.6 or later is recommended.

The Virtualbox Guest Additions will be downloaded directly from your local Virtualbox installation folder.

An Internet connection is required as all software for the VM will be directly downloaded during the installation process.

# How to generate
Execute the following command

`packer build --force centos-xfce.json`

# Resulting VM
The resulting VM will be stored in "../../../../GENERATED/centos-xfce-basevm"