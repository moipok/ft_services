FROM	alpine

RUN 	apk update
RUN     apk add openrc 
RUN	apk add vsftpd
RUN     apk add openssl

EXPOSE  20 21 64000

RUN 	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
		-subj '/C=RU/ST=Moscow/CN=petya' \
		-keyout /etc/ssl/private/vsftpd.key \
                -out /etc/ssl/certs/vsftpd.crt
RUN		adduser -D 'petya'; echo "petya:1" | chpasswd;

RUN     mkdir -p /var/ftp

COPY    /srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY    /srcs/start.sh .

RUN     chmod +x start.sh

CMD     [ "sh", "start.sh" ]