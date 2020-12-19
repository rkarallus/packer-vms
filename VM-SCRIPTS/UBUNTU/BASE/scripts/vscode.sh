#!/bin/bash
mkdir -p /tmp/vscode
cd /tmp/vscode

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vs-code.list

sudo apt -y install apt-transport-https
sudo apt -y update
sudo apt -y install code