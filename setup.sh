#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install ansible
brew cask install virtualbox virtualbox-extension-pack
ansible-playbook setup.yml -e "username=\"$(id -u -nr)\" group=\"$(id -g -nr)\" homedir=$HOME" --ask-sudo-pass
