# General
Packer scripts for Initialization of VMs for different types of VMs

# Preconditions
Download the packer executable for your host OS from https://www.packer.io/downloads.html and place it in your path or the root folder of this project

# Structure
This project is structured in a BASEVMs and and UTILITYVMs folder:
- BASEVMs contains scripts to setup basic versions of VMs with only very little packages installed.
- UTILITYVMs contains specialized VMs with tools installed for a specific purpose. They are always based on a BASEVM which has to be build before the actual UTILITYVM

The folder GENERATED is under .gitignore and will take the output of the VM generation. UTILITYVMs will reference their BASEVMs from there. The README.MD of each VM describes the required preconditions.
