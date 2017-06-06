#!/bin/bash

# install dependencies
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# add docker's GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# set up repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# update apt
sudo apt update

# install docker
sudo apt install docker-ce

# add to group docker
sudo usermod -aG docker $USER
