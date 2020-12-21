#!/bin/bash
cd /tmp
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.9.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

# Go for k9s
cd /tmp
wget https://golang.org/dl/go1.15.6.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.6.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin

# K9s
mkdir -p /home/ubuntu/development
cd /home/ubuntu/development
git clone https://github.com/derailed/k9s.git
cd /home/ubuntu/development/k9s
make build

# Ktunnel
cd /home/ubuntu/development
git clone https://github.com/omrikiei/ktunnel
cd ktunnel
CGO_ENABLED=0 go build -ldflags="-s -w"
sudo mv ./ktunnel /usr/local/bin/ktunnel