#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Enter your password to install ansible using pip."
sudo -s --  "easy_install pip && pip install ansible docker-py"
echo "Enter your password again to continue running the setup."
ansible-playbook setup.yml -e "username=\"$(id -u -nr)\" group=\"$(id -g -nr)\" homedir=$HOME" --ask-sudo-pass

