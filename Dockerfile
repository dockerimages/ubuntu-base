FROM ubuntu:14.10
MAINTAINER Direkt SPEED Europe <frank@dspeed.eu> (irc://SP33D@freenode.org#docker)
#ADD ./ubuntu-core-14.10-core-amd64.tar.gz /
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive
RUN echo 'APT::Install-Recommends "0"; \n\
APT::Get::Assume-Yes "true"; \n\
APT::Get::force-yes "true"; \n\
APT::Install-Suggests "0";' > /etc/apt/apt.conf.d/01buildconfig


