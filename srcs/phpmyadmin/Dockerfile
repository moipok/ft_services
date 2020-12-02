FROM	alpine

EXPOSE  5000

RUN 	apk update
RUN	apk add openrc 
RUN     apk add nginx
RUN	apk add supervisor
RUN	apk add php7 php7-fpm php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
RUN     mkdir -p /www/
RUN     wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz && \
        tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz && \
        rm phpMyAdmin-5.0.2-all-languages.tar.gz && \
        mv phpMyAdmin-5.0.2-all-languages /www/phpmyadmin

COPY 	./srcs/nginx.conf /etc/nginx/conf.d/default.conf
COPY    ./srcs/config.inc.php /www/phpmyadmin/
COPY 	./srcs/supervisord.conf /etc/supervisord.conf
COPY    ./srcs/start.sh .

RUN 	chmod +x start.sh

CMD     [ "sh", "start.sh" ]