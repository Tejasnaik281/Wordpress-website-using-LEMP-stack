# Wordpress-website-using-LEMP-stack
Automated deployment project for Hosting a WordPress website using LEMP (Linux, Nginx, MySQL, PHP) stack.

## Project Overview

Tech Stack: Ubuntu 22.04, Nginx, MySQL, PHP, AWS (EC2, ALB, Route53, Bastion Host)

Automation Tools: GitHub Actions, AWS CLI, Certbot (Let's Encrypt)

Purpose: Automated, secure, and scalable WordPress deployment.

## Architecture Diagram

Frontend: Route53 → Application Load Balancer

Backend: Target Group → VPS (LEMP Stack)

SSH Access: Bastion Host

SSL/TLS: Managed via Let's Encrypt


## Directory Structure


/Wordpress-website-using-LEMP-stack/

│

├── .github/

│   └── workflows/

│       └── deploy.yml               # GitHub Actions workflow for automated deployment

│

├── deployment/

│   ├── setup.sh                    # Setup script  for initial server setup

│   └── deploy.sh                   # Deployment script  for syncing files and restarting services

│

├── .env                             # Environment variables for secrets and configurations

│

├── nginx/

│   └── wordpress.conf               # NGINX config for WordPress

│

├── fetch_data.php                   # PHP script for fetching data from DB

│

└── wp-config.php                    # WordPress config file


## Setup Instructions

### Clone the Repository
   
git clone -b master https://github.com/Tejasnaik281/Wordpress-website-using-LEMP-stack.git
   
cd Wordpress-website-using-LEMP-stack

 ###  Update Environment Variables
 
Create a .env file with the required secrets and repository secrets

DB_NAME=wordpress

DB_USER=wp_user

DB_PASSWORD=your_password

AWS_ACCESS_KEY_ID=your_key

AWS_SECRET_ACCESS_KEY=your_secret

AWS_REGION=your_region

### Manual Initial Setup (First Deployment)

Setup scripts:

bash deployment/setup.sh

### Trigger Deployment via GitHub Actions

Push changes to the master branch:

git add .

git commit -m "Initial Deployment"

git push origin master

GitHub Actions will automatically deploy the code to your VPS.

### SSL/TLS Configuration

Certbot is used to issue SSL certificates.

Ensure HTTPS traffic is correctly forwarded from ALB to the VPS.

### Commands 

Restart Nginx: sudo systemctl restart nginx

Check Nginx Logs: sudo tail -f /var/log/nginx/error.log

Test SSL: sudo certbot renew --dry-run

 
   
