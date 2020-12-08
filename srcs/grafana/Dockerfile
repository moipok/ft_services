FROM alpine:latest

RUN apk update
RUN	apk upgrade
RUN	apk add	wget
RUN	apk add openrc

RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-2.32-r0.apk
RUN	apk add glibc-2.32-r0.apk

# install grafana
RUN wget https://dl.grafana.com/oss/release/grafana-7.2.2.linux-amd64.tar.gz && \
	tar -xzvf grafana-7.2.2.linux-amd64.tar.gz && \
	cp -r grafana-7.2.2/* ./ && \
	rm -rf grafana-7.2.2.linux-amd64.tar.gz grafana-7.2.2
COPY    srcs/grafana.ini /conf/custom.ini
# copy sources
COPY srcs/grafana.db /data/grafana.db

EXPOSE 3000

# run container
COPY srcs/setup.sh /var/setup.sh
RUN chmod 755 /var/setup.sh

CMD [ "/var/setup.sh" ]