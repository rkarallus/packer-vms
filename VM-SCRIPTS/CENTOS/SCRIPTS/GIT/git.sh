#!/bin/bash

yum -y remove git

yum -y install https://centos7.iuscommunity.org/ius-release.rpm
yum -y install git2u-all

yum -y install bash-completion gitk meld kdiff3 gitg curl

yes | cp /tmp/update-scripts/GIT/config/_.gitconfig /home/developer/.gitconfig
dos2unix /home/developer/.gitconfig

cd /home/developer
curl -s -o /usr/bin/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

if [ -f /usr/bin/git-prompt.sh ]; then
    echo "source /usr/bin/git-prompt.sh" >> /etc/bashrc
fi

chown -R developer:developer /home/developer