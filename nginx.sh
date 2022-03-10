#!/bin/sh
while [ ! -f /var/lib/cloud/instance/boot-finished ]
do echo 'Waiting for cloud-init...'
sleep 1
done 
sudo apt-get update -y
sudo apt-get install nginx -y
systemctl enable --now nginx.service
