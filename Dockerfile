
#FROM debian:bullseye
FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
ENV FORCE_UNSAFE_CONFIGURE=1

RUN apt-get update -qq &&\
    apt-get install -y \
        build-essential \
        ccache \
        clang \
        curl \
        file \
        g++-multilib \
        gawk \
        gcc-multilib \
        gettext \
        git \
        libdw-dev \
        libelf-dev \
        libncurses5-dev \
        locales \
        pv \
        pwgen \
        python \
        python3 \
        python3-pip \
        qemu-utils \
        rsync \
        signify-openbsd \
        subversion \
        sudo \
        swig \
        unzip \
        wget \
        zlib1g-dev \
        time \
        libattr1-dev \
        m4 \
        ca-certificates \
        && apt-get -y autoremove \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

COPY . /usr/local/src/dragino-lede-18.06/
WORKDIR /usr/local/src/dragino-lede-18.06/

RUN ./set_up_build_environment.sh

RUN ./build_image.sh

#RUN ./build_image.sh -s V=99
