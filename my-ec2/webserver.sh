#!/bin/bash
apt-get update
apt-get install -y apache2
systemctl start apache2
systemctl enable apache2
echo "<h1>Welcome to the Harish's Web Server</h1>" > /var/www/html/index.html
