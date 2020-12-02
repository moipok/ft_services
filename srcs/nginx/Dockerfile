
FROM	alpine:latest

RUN     apk update
RUN     apk add openrc 
RUN		apk add nginx
RUN		apk add supervisor
RUN		apk add openssl
RUN		apk add openssh

RUN		adduser -D 'petya'; echo "petya:1" | chpasswd;
RUN 	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
		-subj '/C=RU/ST=Moscow/CN=petya' \
		-keyout /etc/ssl/localhost.key \
		-out /etc/ssl/localhost.crt
RUN		mkdir www

COPY	./srcs/index.html /www/
COPY 	./srcs/nginx.conf /etc/nginx/conf.d/default.conf
COPY 	./srcs/supervisord.conf /etc/supervisord.conf
COPY 	./srcs/sh.sh sh.sh

RUN 	chmod +x sh.sh

EXPOSE	80 443 22

CMD		[ "sh", "sh.sh" ]