<?php
define('DB_NAME', getenv('DB_NAME'));
define('DB_USER', getenv('DB_USER'));
define('DB_PASSWORD', getenv('DB_PASSWORD'));
define('DB_HOST', 'localhost');
define('DB_CHARSET', 'utf8mb4');
define('DB_COLLATE', '');

// Security keys
define('AUTH_KEY',         'generate-your-key');
define('SECURE_AUTH_KEY',  'generate-your-key');
define('LOGGED_IN_KEY',    'generate-your-key');
define('NONCE_KEY',        'generate-your-key');
define('AUTH_SALT',        'generate-your-key');
define('SECURE_AUTH_SALT', 'generate-your-key');
define('LOGGED_IN_SALT',   'generate-your-key');
define('NONCE_SALT',       'generate-your-key');

// WordPress URL
define('WP_HOME', getenv('WP_HOME'));
define('WP_SITEURL', getenv('WP_SITEURL'));

// Filesystem
define('FS_METHOD', 'direct');

// Debugging
define('WP_DEBUG', false);
define('WP_DEBUG_LOG', false);
define('WP_DEBUG_DISPLAY', false);

$table_prefix = 'wp_';

if ( !defined('ABSPATH') ) {
    define('ABSPATH', __DIR__ . '/');
}

require_once ABSPATH . 'wp-settings.php';
