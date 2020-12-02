FROM	alpine

RUN 	apk update
RUN		apk add openrc 
RUN		apk add mysql mysql-client
RUN		mkdir "/run/mysqld"
RUN		chown -R mysql /run/mysqld

COPY	./srcs/createdb.sql ./srcs/base.sql ./srcs/start.sh ./

COPY	./srcs/my.cnf /etc/my.cnf

EXPOSE	3306

CMD		[ "sh", "start.sh" ]