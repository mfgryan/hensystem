#!/bin/bash

# Docker installation on RHEL7 / CentOS7
sudo yum install -y yum-utils \
    device-mapper-persistent-data \
    lvm2

sudo yum-config-manager \
        --add-repo \
            https://download.docker.com/linux/centos/docker-ce.repo

sudo yum -y --enablerepo=rhui-REGION-rhel-server-extras install container-selinux

sudo yum -y install docker-ce

# post install steps
sudo systemctl start docker

sudo groupadd docker

sudo usermod -aG docker $USER

sudo systemctl enable docker # docker on startup
