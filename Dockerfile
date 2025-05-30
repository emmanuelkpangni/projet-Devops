FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y apache2 net-tools iproute2 iputils-ping nano ssh && \
    apt-get clean

COPY . /var/www/html/

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
