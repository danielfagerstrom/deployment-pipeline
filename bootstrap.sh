#!/bin/bash -e

# install security patches etc
sudo apt-get update

# needed for add-apt-repository
sudo apt-get install -y python-software-properties

# Install Ansible
/vagrant/setup-ansible.sh

# Setup Ansible hosts
sudo cp /vagrant/provisioning/ansible_hosts /etc/ansible/hosts
# Needed on windows, all files from windows have mode +x and ansible doesn't like that
sudo chmod -x /etc/ansible/hosts

# Do provisioning
cd /vagrant
ansible-playbook provisioning/playbook.yml -s
