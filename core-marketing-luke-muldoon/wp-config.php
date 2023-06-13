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
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'creative_solutions' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

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
define( 'AUTH_KEY',         'FQX*%e/:6:gpjH:h@mspq50`s =m3)V9VxR,cActSiKB+Af3u$)?SdiQ(dhtzP@l' );
define( 'SECURE_AUTH_KEY',  'Xqj>AFgP*s_fo=Vt=EWtxo[C>95yi ,9bj-S4z+x2J ADaw7^a0Vd>Z}1tDgak|(' );
define( 'LOGGED_IN_KEY',    'r~B9!,$0q85J=8da-d@FFXP%X/UvsczdmQiia`#(/H~F>DHp_.y~2*,^J9Chhk<H' );
define( 'NONCE_KEY',        '(@2ylV0mSm|XfBpJkf`_Po~Z},MvR}~7m/*uzX>U);kA~%ex3<y+)nN;H5leWZHE' );
define( 'AUTH_SALT',        '}ou;;[{}-|Qv>{m@0w`N}csl=N ul99!5YFS0VJ5;4LeTt`h#9&$r$~bAt`%)M24' );
define( 'SECURE_AUTH_SALT', '-f84Wm[-3@SK|h Wnj74I!-CP|lXqFr,)d4,z=ykQr-@}.%k.%LX}pbx])*Pd5:q' );
define( 'LOGGED_IN_SALT',   'oDU[q:)n$ 3}/[5(LS1.6h$i4FG<PC0Sy3/}:ngSr/S5!Cn2R<r|5U0.mk,4{gJ<' );
define( 'NONCE_SALT',       'KiE{^NpG?>#[t SQs%^bObB0UTF/95^!}LMg4Z9N-39:$X|BP[[F^!fsLv}?2ZB*' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'cs_';

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
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
