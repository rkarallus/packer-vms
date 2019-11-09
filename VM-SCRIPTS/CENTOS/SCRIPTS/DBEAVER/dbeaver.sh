#!/bin/bash

cd /tmp
yum -y install curl dos2unix
sudo curl -s -L "https://dbeaver.io/files/dbeaver-ce-latest-stable.x86_64.rpm" -o dbeaver-ce-latest-stable.x86_64.rpm

rpm -ivh dbeaver-ce-latest-stable.x86_64.rpm