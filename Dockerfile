FROM scratch
ADD ./ubuntu-core-14.04.1-core-amd64.tar.gz /
ENV DEBIAN_FRONTEND=noninteractive
ENV APT_OPTS="--no-install-recommends"
#RUN apt-get install $APT_OPTS

