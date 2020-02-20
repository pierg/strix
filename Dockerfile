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
        nano

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
        g++


WORKDIR /home

# Cloning Strix
RUN git clone https://gitlab.lrz.de/i7/strix.git

WORKDIR /home/strix

RUN \
    git submodule init && \
    git submodule update

RUN make

WORKDIR /home/strix/bin