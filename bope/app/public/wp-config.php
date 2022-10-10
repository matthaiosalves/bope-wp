<?php

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'exbras19_wp43' );

/** Database username */
define( 'DB_USER', 'exbras19_wp43' );

/** Database password */
define( 'DB_PASSWORD', 'F34)3S)pfQ' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'zadtd7khkjz0l07owpxzxduxahb29430qwt76wveohxv9lbq596jjxf4yrcrg88w' );
define( 'SECURE_AUTH_KEY',  '21juswsrapbekgcierliyhsvyrvmknpnw5qcn9mjld3cpmvaaxampddtuwbz0qcn' );
define( 'LOGGED_IN_KEY',    'scsys8wjkhp8sxjvkytxdrpwemfo2m7ti6yshopwlmkgfibzdod79zqarms48pai' );
define( 'NONCE_KEY',        'a95qppvdea12zm7qnm6dvwrwf1gmno9hxwiaad9fvynb2khitz6ywrgqdqmtcxo9' );
define( 'AUTH_SALT',        'giqcsqhudg7vfewuizssfdrelizi8frhjufjabckuufqhva2dzgfhkzatplbjaev' );
define( 'SECURE_AUTH_SALT', 'trhqwy2fq4ooysbp0wh1bkykm07yzoqlrabg1klyf6s5ltyh2wgzpnzvxzsxevwi' );
define( 'LOGGED_IN_SALT',   'vlxmzlsvuo1k39b82meae5m95bm6iwo7kkbhqbn17ajozn1rnqhb2vggu6zvact1' );
define( 'NONCE_SALT',       'fc18wghw5ls0xkwd5ds5uhchdz0youj3ila7daionspxfka9eg2x2rmea1l8oew7' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wphv_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';


//[aposentados]
function aposentados_func(){
  $html = '';

  $url = "https://bopehabbo.net/api/v2/aposentados.php";
  $ch = curl_init($url);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
  $api = json_decode(curl_exec($ch), true);

  $html .= '<p>';
    foreach($api as $item) {
      $html .= '<img title="Ex-'.$item['pat_nome'].', '.$item['nome'].'" src="https://www.habbo.com.br/habbo-imaging/avatarimage?img_format=png&amp;user='.$item['nome'].'&amp;direction=2&amp;head_direction=2&amp;size=m&amp;action=std" alt="" width="64" height="110">';
    }
  $html .= '</p>';

  return $html;
}
add_shortcode( 'aposentados', 'aposentados_func' );
