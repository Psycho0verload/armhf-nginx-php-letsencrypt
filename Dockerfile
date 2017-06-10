FROM arm32v7/debian:stretch
RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get -y autoremove
EXPOSE 80
