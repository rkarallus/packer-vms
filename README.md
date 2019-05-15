# General
Packer scripts for Initialization of VMs for different types of VMs

# Preconditions
Download the packer (1.4.1 or higher) executable for your host OS from https://www.packer.io/downloads.html and place it in your path or the root folder of this project.

# Structure
The root of this project contains the VM-SCRIPTS folder and the GENERATED folder. The later is not commited and contains the generated VMs (after you executed the generation scripts).

The VM-SCRIPTS folder is structured as follows:
- CENTOS ... setup scripts for CENTOS VMs
	- BASE ... setup scripts for the BASEVMs for the different window managers. Each VM folder contains details on the installation process including preconditions
	- FULL ... setup scripts for full use case based VMs. Each VM folder contains details on the installation process including preconditions
	- SCRIPTS ... setup scripts for tools used for different VMs. The scripts are referenced from the different VM build scripts
