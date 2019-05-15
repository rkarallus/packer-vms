#!/bin/bash

yum -y install git

su developer -c 'git clone --depth=1 https://github.com/Bash-it/bash-it.git /home/developer/.bash_it'
su developer -c '/home/developer/.bash_it/install.sh --silent'