#!/bin/bash

yum -y install curl

curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -

yum -y install nodejs