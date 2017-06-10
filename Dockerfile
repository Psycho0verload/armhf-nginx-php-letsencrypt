FROM resin/armv7hf-debian:jessie
MAINTAINER Psycho0verload
ENV DEBIAN_FRONTEND noninteractive
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y php7.0 php7.0-curl php7.0-gd php7.0-fpm php7.0-cli php7.0-opcache php7.0-mbstring php7.0-xml php7.0-zip
EXPOSE 80

