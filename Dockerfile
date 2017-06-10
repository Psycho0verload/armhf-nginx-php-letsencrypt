FROM arm32v7/debian:stretch

RUN apt update \
    && apt -y dist-upgrade \
    && apt-get -y autoremove
    
EXPOSE 80
