#!/bin/bash

yum -y remove qt*
yum -y remove orage*

# cleaning up yum
yum -y clean all

rm -rf /tmp/config
rm -rf /tmp/scripts
rm -rf /tmp/update-scripts