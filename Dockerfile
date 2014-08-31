FROM dockerimages/ubuntu-core:14.04
MAINTAINER Frank Lemanschik
RUN sed -i 's/trusty/utopic/g' /etc/apt/sources.list \
 && apt-get update && apt-get upgrade -y


