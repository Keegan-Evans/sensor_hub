#!/bin/bash

# prep for install
#PACKAGES=""

apt-get update
apt-get upgrade

# user to run docker needs to be in docker group
usermod -aG docker $USER
su - $USER

# install docker
# run docker provided install script
curl -sSL https://get.docker.com

# Install docker compose
apt-get install libffi-dev libssl-dev
apt install python3-dev

apt-get install python3 python3-pip

pip3 install docker-compose



# build containers
docker compose up -f ./docker-compose.yaml --build

# reboot

systemctl reboot
