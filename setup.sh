#!/bin/bash
set -e

# Install required packages for ansible.
sudo apt-get -y install python-pip python-dev

# Install ansible.
sudo pip install ansible markupsafe

# Install UniFi controller via Ansible.
ansible-playbook plays/setup_all.yml -c local