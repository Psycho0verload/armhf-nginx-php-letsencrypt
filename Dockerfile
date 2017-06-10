FROM arm32v7/debian:stretch
RUN apt-get update && apt-get -y dist-upgrade && apt-get -y autoremove
RUN apt-get install -y php7.0 php7.0-curl php7.0-gd php7.0-fpm php7.0-cli php7.0-opcache php7.0-mbstring php7.0-xml php7.0-zip

EXPOSE 80
