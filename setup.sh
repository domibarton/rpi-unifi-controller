#!/bin/bash

# Install required packages for ansible.
sudo apt-get -y install python-pip python-dev

# Install ansible.
sudo pip install ansible markupsafe

# Install UniFi controller via Ansible.
ansible-playbook setup.yml -c local