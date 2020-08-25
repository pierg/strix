FROM ubuntu:19.04

# Install keyboard-configuration separately to avoid travis hanging waiting for keyboard selection
RUN \
    apt -y update && \
    apt install -y keyboard-configuration

# Install general things
RUN \
    apt install -y \
        git \
        unzip \
        nano \
        wget

# Install strix dependencies
RUN \
    apt install -y \
        cmake \
        make\
        libboost-dev \
        libboost-program-options-dev \
        libboost-filesystem-dev \
        libboost-iostreams-dev \
        zlib1g-dev \
        openjdk-12-jdk \
        python3-pip \
        python3-dev \


RUN apt update \
    && apt install -y \
    software-properties-common \
    openjdk-11-jdk


WORKDIR /home

# Cloning Strix
RUN git clone https://github.com/pierg/strix.git

WORKDIR /home/strix

ENTRYPOINT ["./entrypoint.sh"]