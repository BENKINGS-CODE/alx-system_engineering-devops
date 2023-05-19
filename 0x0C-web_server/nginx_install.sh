#!/bin/bash

# Update package lists
apt-get update

# Install Nginx
apt-get install -y nginx

# Configure Nginx
echo "server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html;

    location / {
        return 200 'Hello World!';
    }
}" > /etc/nginx/sites-available/default

# Restart Nginx
service nginx restart

