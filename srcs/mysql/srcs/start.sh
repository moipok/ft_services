openrc default
/etc/init.d/mariadb setup
/etc/init.d/mariadb start
mysql -u root mysql < createdb.sql
mysql -u root base < base.sql
/etc/init.d/mariadb stop
/usr/bin/mysqld_safe --datadir='/var/lib/mysql'