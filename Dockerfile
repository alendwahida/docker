FROM ubuntu:18.04
LABEL Maintainer="awn"

RUN apt update
RUN apt install -y apache2

ADD index.html /var/www/html/index.html

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
