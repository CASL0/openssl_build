FROM ubuntu:20.04

ARG NDK_VERSION="r25c"

RUN apt-get update -qqy \
  && apt-get install -qqy unzip build-essential perl \
  && rm -rf /var/lib/apt/lists/*

# NDKのセットアップ
WORKDIR /opt/android
ADD https://dl.google.com/android/repository/android-ndk-${NDK_VERSION}-linux.zip android-ndk-linux.zip
RUN unzip -q android-ndk-linux.zip && rm -f android-ndk-linux.zip
ENV ANDROID_NDK_ROOT /opt/android/android-ndk-${NDK_VERSION}

WORKDIR /openssl_build
