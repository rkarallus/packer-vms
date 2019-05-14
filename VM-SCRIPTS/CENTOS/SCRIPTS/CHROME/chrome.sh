#!/bin/bash

# Chrome
cp /tmp/update-scripts/CHROME/config/google-chrome.repo /etc/yum.repos.d/google-chrome.repo
dos2unix /etc/yum.repos.d/google-chrome.repo
yum -y install google-chrome-stable