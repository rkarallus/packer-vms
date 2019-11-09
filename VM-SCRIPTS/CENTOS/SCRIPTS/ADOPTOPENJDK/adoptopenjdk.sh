#!/bin/bash
yum -y erase java-1.8.0-openjdk-headless.x86_64 java-1.7.0-openjdk-headless.x86_64 java || true

cp /tmp/update-scripts/ADOPTOPENJDK/config/adoptopenjdk.repo /etc/yum.repos.d/adoptopenjdk.repo
dos2unix /etc/yum.repos.d/adoptopenjdk.repo
yum -y install adoptopenjdk-8-hotspot