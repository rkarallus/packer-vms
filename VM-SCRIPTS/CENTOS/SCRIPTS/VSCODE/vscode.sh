#!/bin/bash

mkdir -p /etc/yum.repos.d
cp /tmp/update-scripts/VSCODE/config/vscode.repo /etc/yum.repos.d/vscode.repo

rpm --import https://packages.microsoft.com/keys/microsoft.asc

yum -y check-update
yum -y install code