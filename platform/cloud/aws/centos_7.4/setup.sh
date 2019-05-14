#!/bin/bash

sudo setenforce 0 && \
sudo sed -i --follow-symlinks 's/^SELINUX=.*/SELINUX=disabled/g' /etc/sysconfig/selinux
sudo echo 'overlay' >> /etc/modules-load.d/overlay.conf
sudo modprobe overlay
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y -q yum-utils device-mapper-persistent-data lvm2
sudo yum install -y -q docker-ce
sudo systemctl start docker
sudo systemctl enable docker
sudo yum install -y -q wget
sudo yum install -y -q git
sudo yum install -y -q unzip
sudo yum install -y -q curl
sudo yum install -y -q xz
sudo yum install -y -q ipset
sudo yum install -y -q ntp
sudo systemctl enable ntpd
sudo systemctl start ntpd
sudo getent group nogroup || sudo groupadd nogroup
sudo getent group docker || sudo groupadd docker
sudo touch /opt/dcos-prereqs.installed
