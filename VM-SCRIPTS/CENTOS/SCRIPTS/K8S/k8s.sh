#!/bin/bash
# https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/
update-alternatives --set iptables /usr/sbin/iptables-legacy

cp /tmp/update-scripts/K8S/config/k8s.repo /etc/yum.repos.d/k8s.repo
dos2unix /etc/yum.repos.d/k8s.repo
yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes
systemctl enable --now kubelet


cp /tmp/update-scripts/K8S/config/k8s.conf /etc/sysctl.d/k8s.conf
dos2unix /etc/yum.repos.d/k8s.conf
modprobe br_netfilter
sysctl --system

cd /tmp

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
mkdir -p /usr/local/bin/
install minikube /usr/local/bin/

echo "CHANGE_MINIKUBE_NONE_USER=true" >> /root/.bashrc
/usr/local/bin/minikube start --vm-driver=none

cd /tmp

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh