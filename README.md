Purpose
=======

This is an Ansible-based project to setup an [UniFi Controller](https://www.ubnt.com/download/unifi) on a [Raspberry Pi](https://www.raspberrypi.org/) / [Raspbian](https://www.raspbian.org/) with backup and all the shizzle.

Setup
=====

Preparation
-----------

Before you can clone this repository and install the UniFi controller, you've to install git:

```bash
sudo apt-get -y update
sudo apt-get -y install git
```

Clone the repository
--------------------

Clone this repository on your Raspberry Pi and `cd` into it:

```bash
git clone https://github.com/domibarton/rpi-unifi-controller.git
cd rpi-unifi-controller
```

Install the UniFi controller
----------------------------

Now you should be ready to run the setup script:

```bash
./setup.sh
```

In case you've already installed ansible and updated the apt cache, you can also simply run the Ansible playbook to save some time:

```bash
ansible-playbook plays/setup_all.yml -c local
```

Update
======

To update the system you can easily run the update playbook:

```bash
ansible-playbook plays/update.yml -c local
```