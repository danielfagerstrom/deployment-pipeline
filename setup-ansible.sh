#!/bin/bash -e

# Install Ansible
if ! $(ls /etc/apt/sources.list.d | grep -q "rquillo-ansible"); then
    sudo add-apt-repository ppa:rquillo/ansible -y
    sudo apt-get update
fi
sudo apt-get install ansible -y
