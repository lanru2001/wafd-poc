#!/bin/bash

#Install basic packages and set SELinux to permissive 
sudo yum  -y update
sudo yum install -y vim bash-completion curl wget tar telnet 
sudo setstatus
sudo setenforce 0
sudo sed -i 's/^SELINUX=.*/SELINUX=permissive/g' /etc/selinux/config

# Shell script for installing Java, Jenkins and Maven in Ubuntu EC2 instance
sudo yum -y install wget
sudo yum -y install git


# Install Python, flask and other dependencies 
