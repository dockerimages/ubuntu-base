FROM scratch
ADD ./ubuntu-core-14.04.1-core-amd64.tar.gz /
ENV DEBIAN_FRONTEND noninteractive
echo 'APT::Install-Recommends "0"; \n\
APT::Install-Suggests "0";' > /etc/apt/apt.conf.d/01norecommend
RUN apt-config dump | grep Recommends
#RUN apt-get install $APT_OPTS

