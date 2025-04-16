#!/bin/bash

sudo apt-get update
sudo apt-get install nginx -y
sudo echo "Welcome to my NGINX Website" > /var/www/html/index.html
sudo systemctl enable nginx
sudo systemctl start nginx