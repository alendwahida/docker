FROM ubuntu:18.04
LABEL Maintainer="awn"

RUN apt update
RUN apt install -y apache2

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
