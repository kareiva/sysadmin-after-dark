#!/bin/bash

ansible-galaxy collection install community.general

if grep -q 'Red Hat' /etc/redhat-release; 
then 
  sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
fi

ansible-playbook -i inventory lbreakout.yml -K
