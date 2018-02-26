#!/bin/bash
# Script to install Apache on multiple Linux Distros
# Author : Alok A S
# Version : 0.1

## Algorithm: Find the platform and install the appropriate package
## We can do that by the lsb_release -a command or by the looking at the *release files in the /etc location
## If Debian based system, then we will use the apt-get command, else the yum package manager

cat /etc/*-release | grep -i debian
if [ $? -eq 0 ]; then
  echo "Debian Distro Found"
  sudo apt-get install -y apache2
  exit
fi

cat /etc/*-release | grep -i redhat
if [ $? -eq 0 ]; then
  echo "Redhat Distro Found"
  sudo yum install -y httpd
  exit
fi