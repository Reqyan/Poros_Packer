#!/bin/sh

sudo apt-get -y update && sudo apt-get install -y
apt-get install nginx -y
systemctl enable --now nginx