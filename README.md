# Wordpress-website-using-LEMP-stack
Automated deployment project for Hosting a WordPress website using LEMP (Linux, Nginx, MySQL, PHP) stack.




## Directory Structure

├── .github/

│   ├── workflows/

│   │   └── deploy.yml     # GitHub Actions workflow for automated deployment
│

├── deployment/

│   ├── setup.sh           # Script for initial server setup

│   ├── deploy.sh          # Script for syncing files and restarting services

│
├── nginx/
│   └── wordpress.conf     # Nginx server configuration for WordPress
│
├── .env                   # Environment variables for secrets and configurations
├── wp-config.php          # WordPress configuration file
├── fetch_data.php         # Script for database or data-fetch tasks
└── README.md              # Project documentation
