#!/bin/bash

echo "This is a silly script" > /tmp/silly.txt

sudo yum clean all
sudo yum -y update
sudo yum -y install httpd
sudo firewall-cmd --permanent --add-port=80/tcp
sudo firewall-cmd --permanent --add-port=443/tcp 
sudo firewall-cmd --reload
sudo systemctl stop httpd
sudo systemctl start httpd
sudo systemctl enable httpd 
