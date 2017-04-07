FROM ubuntu:16.10
MAINTAINER shun

ENV LSB_RELEASE yakkety

RUN : \
 && set -x \
 && apt-get update \
 && apt-get install -y \
      apt-transport-https \
      curl \
 && apt-get clean \
 && echo "deb https://packages.cloud.google.com/apt cloud-sdk-$LSB_RELEASE main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
 && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - \
 && :

RUN : \
 && set -x \
 && apt-get update \
 && apt-get install -y \
      google-cloud-sdk \
 && apt-get clean \
 && :
