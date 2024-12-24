#!/bin/bash

echo "Hello, World!" > /var/tmp/hello.txt
sudo apt update && sudo apt install -y nginx
echo "DARSHIT SHAH NGINX SERVER" > /var/www/html/index.html
 
sudo systemctl start nginx
sudo systemctl enable nginx