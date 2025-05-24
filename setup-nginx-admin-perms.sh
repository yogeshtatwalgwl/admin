#!/bin/bash

# Exit on error
set -e

# Give ownership to Nginx (www-data)
sudo chown -R www-data:www-data /home/ubuntu/admin/build

# Give read & execute permissions
sudo chmod -R 755 /home/ubuntu/admin/build

# Ensure Nginx can access parent directories
sudo chmod +x /home/ubuntu
sudo chmod +x /home/ubuntu/admin
sudo chmod +x /home/ubuntu/admin/build

# Restart Nginx
sudo systemctl restart nginx

# Show Nginx status
sudo systemctl status nginx
