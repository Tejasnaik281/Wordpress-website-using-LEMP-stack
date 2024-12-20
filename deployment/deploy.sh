#!/bin/bash
set -e

REPO_DIR="/var/www/html/projectlemp"
BRANCH="master"

if [ ! -d "$REPO_DIR/.git" ]; then
    echo "Cloning repository..."
    git clone -b $BRANCH git@github.com:Tejasnaik281/Wordpress-website-using-LEMP-stack.git $REPO_DIR

else
    echo "Pulling latest changes..."
    cd $REPO_DIR
    git pull origin $BRANCH
fi

# Set permissions
sudo chown -R www-data:www-data $REPO_DIR
sudo chmod -R 755 $REPO_DIR

# Restart services
sudo systemctl reload nginx
echo "Deployment complete."