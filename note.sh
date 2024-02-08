#!/usr/bin/env bash

sudo apt-get update
sudo apt -y install docker.io
export DOCKER_HOST=tcp://docker:2375
docker ps -a

# install pip and molecule
sudo apt install curl -y
curl -sS https://bootstrap.pypa.io/get-pip.py | sudo python3
# python3 -m pip install "molecule[ansible,docker,lint]"
pip3 install ansible-lint==5.3.2 
pip3 install molecule-docker==0.2.4
pip3 install yamllint==1.26.1
pip3 install molecule

# Add molecule to path
#python3 -m site &> /dev/null && PATH="$PATH:`python3 -m site --user-base`/bin"

# check tools versions
ansible --version
ansible-lint --version
molecule --version
