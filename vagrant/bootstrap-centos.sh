#!/bin/bash

echo "Executing bootstrap-centos.sh ..."

# Update all CentOS system software
yum update -y

# Set date and time
timedatectl set-timezone Europe/Brussels;

# Set keyboard layout to belgian (Azerty)
localectl set-keymap be;

# Disable automatic updates, this may conflict with later yum installation commands
systemctl stop packagekit.service && systemctl mask packagekit.service

# Install Java
yum install java-1.8.0-openjdk-devel.x86_64 -y;

# Install other utilities
yum install git unzip wget net-tools bc -y;

# Make SAG install directory
mkdir -p /opt/softwareag;
chown -R vagrant:vagrant /opt/softwareag;


echo "Executing bootstrap-centos.sh ... DONE"
