#!/bin/bash

#!/bin/bash

yum -y install curl python
cd /tmp/
curl -s "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip -q awscli-bundle.zip
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws