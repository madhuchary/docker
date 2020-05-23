#!/bin/bash
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install docker-ce --nobest -y
echo "export DOCKER_API_VERSION=1.39" >> /etc/bashrc
sudo systemctl start docker
sudo usermod -aG docker $USER
docker version
