# Base off of Ubuntu LTS
FROM ubuntu:16.04
RUN apt-get update

# Meta
LABEL maintainer="actuallymentor"
ENV DEBIAN_FRONTEND noninteractive

# Install deps
RUN apt-get update
RUN apt-get install -y software-properties-common

# Install geth
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get install geth

# Geth specffic configs
EXPOSE 30303/tcp 30303/udp

# When running the container
CMD geth --port=30303 --lightserv=90 --datadir=/root/etherchain