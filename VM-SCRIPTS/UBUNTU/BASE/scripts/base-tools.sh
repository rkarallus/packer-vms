#!/bin/bash
chown -R ubuntu:ubuntu /home/ubuntu/.config
apt-get -y upgrade
apt-get -y install terminator
apt-get -y install curl