FROM psycho0verload/armv7hf-debian-qemu

MAINTAINER Psycho0verload

ENV DEBIAN_FRONTEND noninteractive

RUN ["cross-build-start"]
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
RUN apt -q update && \
    apt -qy upgrade && \
    apt-get autoremove && \
    apt-get clean
RUN apt -qy install \
    php7.0 \
    php7.0-curl \
    php7.0-gd \
    php7.0-fpm \
    php7.0-cli \
    php7.0-opcache \
    php7.0-mbstring \
    php7.0-xml \
    php7.0-zip
RUN apt -qy install nginx
RUN apt -qy install \
    openssl \
    certbot
RUN [ "cross-build-end" ]

EXPOSE 80
EXPOSE 443
