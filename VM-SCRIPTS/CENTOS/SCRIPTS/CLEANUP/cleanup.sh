#!/bin/bash

yum -y remove qt*
yum -y remove orage*

# cleaning up yum
yum -y clean all

rm -rf /tmp/config