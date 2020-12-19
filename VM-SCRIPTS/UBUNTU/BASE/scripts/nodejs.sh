#!/bin/bash
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source /home/ubuntu/.bashrc
export NVM_DIR="/home/ubuntu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts