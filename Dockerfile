FROM ubuntu:18.04

#
# Install System Updates
#
RUN apt-get -y update; \
    apt-get -y upgrade; \
    rm -rf /var/lib/apt/lists/*;

#
# Install Requirements
#
RUN apt-get -y update; \
    apt-get -y install vim; \
    apt-get -y install zip unzip; \
    apt-get -y install default-jre; \
    rm -rf /var/lib/apt/lists/*;

#
# Setup Minecraft
#
ADD minecraft /minecraft
WORKDIR /minecraft

#
# Finish
#
CMD ./start.sh