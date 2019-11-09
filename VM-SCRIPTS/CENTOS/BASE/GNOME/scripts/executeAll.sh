#!/bin/bash
find /tmp/scripts/ -type f -print0 | xargs -0 dos2unix
find /tmp/scripts/ -type f -print0 | xargs -0 chmod +x

sudo /tmp/scripts/VBOX/virtualbox.sh
sudo /tmp/scripts/last.sh

find /tmp/CLEANUP/ -type f -print0 | xargs -0 dos2unix
find /tmp/CLEANUP/ -type f -print0 | xargs -0 chmod +x

sudo /tmp/CLEANUP/cleanup.sh
sudo /tmp/CLEANUP/zerodisk.sh
