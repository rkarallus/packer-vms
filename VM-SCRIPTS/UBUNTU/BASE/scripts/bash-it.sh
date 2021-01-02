#!/bin/bash
git clone --depth=1 https://github.com/Bash-it/bash-it.git /home/ubuntu/.bash_it
/home/ubuntu/.bash_it/install.sh --silent

echo 'export EDITOR="/usr/bin/vim"' >> /home/ubuntu/.bashrc

sed -i 's/bobby/clean/g' /home/ubuntu/.bashrc