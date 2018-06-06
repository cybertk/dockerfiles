FROM ubuntu:16.04

ARG revision

LABEL maintainer "Quanlong <kyan.ql.he@gmail.com>"

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        wget \
        unzip \
        make \
        file \
        && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Download and build Caffe
RUN wget --no-check-certificate https://dl.google.com/android/repository/android-ndk-$revision-linux-x86_64.zip && \
    unzip android-ndk-*.zip -d /opt && \
    rm android-ndk-*.zip
ENV PATH=/opt/android-ndk-$revision:$PATH

WORKDIR /wd
