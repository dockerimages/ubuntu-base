FROM scratch
ADD . 
ENV DEBIAN_FRONTEND=noninteractive
ENV APT_OPTS="--no-install-recommends"
#RUN apt-get install $APT_OPTS

