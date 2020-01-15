#!/bin/bash
find /tmp/update-scripts/ -type f -print0 | xargs -0 dos2unix
find /tmp/update-scripts/ -type f -print0 | xargs -0 chmod +x

sudo /tmp/update-scripts/JDK/jdk.sh
sudo /tmp/update-scripts/MAVEN/maven.sh
sudo /tmp/update-scripts/NODE/node.sh
sudo /tmp/update-scripts/ATOM/atom.sh
sudo /tmp/update-scripts/DOCKER/docker.sh
sudo /tmp/update-scripts/AWS-CLI/aws-cli.sh
sudo /tmp/update-scripts/INTELLIJ/intellij.sh
sudo /tmp/update-scripts/POSTMAN/postman.sh
sudo /tmp/update-scripts/VSCODE/vscode.sh
sudo /tmp/update-scripts/FIREFOX/firefox.sh
sudo /tmp/update-scripts/CHROME/chrome.sh
sudo /tmp/update-scripts/GIT/git.sh
sudo /tmp/update-scripts/BASH-IT/bash-it.sh
sudo /tmp/update-scripts/GRADLE/gradle.sh
sudo /tmp/update-scripts/DBEAVER/dbeaver.sh

find /tmp/CLEANUP/ -type f -print0 | xargs -0 dos2unix
find /tmp/CLEANUP/ -type f -print0 | xargs -0 chmod +x

sudo /tmp/CLEANUP/cleanup.sh
sudo /tmp/CLEANUP/zerodisk.sh