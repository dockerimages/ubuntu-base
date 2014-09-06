ubuntu-core:14.04.1 (latest) / trusty
============

Dockerfile:

    FROM scratch
    ADD ./ubuntu-core-14.04.1-core-amd64.tar.gz /
    ENV LC_ALL C
    ENV DEBIAN_FRONTEND noninteractive
    RUN echo 'APT::Install-Recommends "0"; \n\
    APT::Get::Assume-Yes "true"; \n\
    APT::Get::force-yes "true"; \n\
    APT::Install-Suggests "0";' > /etc/apt/apt.conf.d/01buildconfig
    
Replace images :D

    docker pull dockerimages/ubuntu-core:14.04.1 \
    && docker tag dockerimages/ubuntu-core:14.04.1 ubuntu:14.04 \
    && docker tag dockerimages/ubuntu-core:14.04.1 ubuntu:trusty
