<?php

define( 'DB_NAME', 'base' );

define( 'DB_USER', 'admin' );

define( 'DB_PASSWORD', '1' );

define( 'DB_HOST', 'mysql:3306');
define( 'WP_HOME', 'http://192.168.99.101:5050/' );
define( 'WP_SITEURL', 'http://192.168.99.101:5050/' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
define('FS_METHOD', 'direct');
define('AUTH_KEY',         'i;}Qpk|2t8eih 9<zj,kvob6&K(J|ymJk;2K4c*[K2%s_4_#58aGz_|w|%k<d!zE');
define('SECURE_AUTH_KEY',  'YS9 iw2!z`-Sze~8,trzZ*?K#7yhDKL1>@&}3W4dTH%a+eonl,]{7jq`Y|z*?ZrU');
define('LOGGED_IN_KEY',    '+LFQMu_gzRP5JF};dMgJ2uKxBVX?|nWW1`<~lhyw.rffs.N287E22nLp#||YPcV#');
define('NONCE_KEY',        'k{`K:O&i|-FMq1[,P/`ED~Hzefzd}jeNXNX}[GL;X -)/7|3C$.}j8jEeUShLbfh');
define('AUTH_SALT',        'rwViN}-F()]~<+>-:-wTgzOu!DhKj7)|?|HIys|g:x1~lyhUbd(H4%f-U 4,<k3T');
define('SECURE_AUTH_SALT', 'Kd-FlSGtpwc%tA-uXeJIW]sw#+},o>X$(95LlO u0+$j4)L|ub~6/?|j<C0_&]>a');
define('LOGGED_IN_SALT',   'Goz4`VAy<-.-P+TK0(k5- o~0tNKfzmT-mX>H=)7w~o5:w6RM+DQxAg!-=1D$C+:');
define('NONCE_SALT',       '+A!KoAZJRj{ 0S{4#py*qja!%5PnxTrbdXBF&P]-A)ziE4(IT$#{+]+pz9bkvly.');
$table_prefix = 'wp_';
define( 'WP_DEBUG', true );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
require_once ABSPATH . 'wp-settings.php';