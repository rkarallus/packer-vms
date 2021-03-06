# Overview
This setup script generates a base VM with the latest CentOS7 and XFCE as window manager plus all available tools from the ../../SCRIPTS subfolders. This VM is used for integration testing of the scripts.

# Preconditions
Packer is required in your path. The recommended version is packer 1.4.1 or higher.

Virtualbox 6.0.8 or later is recommended.

The Virtualbox Guest Additions will be downloaded directly from your local Virtualbox installation folder.

An Internet connection is required as all software for the VM will be directly downloaded during the installation process.

# How to generate
Execute the following command

`packer build --force integrate-all.json`

# Resulting VM
The resulting VM will be stored in "../../../../GENERATED/centos-xfce-all"