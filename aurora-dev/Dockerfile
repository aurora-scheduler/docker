FROM ubuntu:xenial

### Install necessary packages

# Add Mesosphere repository
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E56151BF && echo deb http://repos.mesosphere.io/ubuntu xenial main > /etc/apt/sources.list.d/mesosphere.list

# Install required libraries including mesos for the libmesos
RUN apt-get update && apt-get -y install \
  bison \
  curl \
  git \
  gcc-4.8 \
  libapr1-dev \
  libcurl4-openssl-dev \
  libssl-dev \
  libsvn-dev \
  libffi-dev \
  python-all-dev \
  software-properties-common \
  libkrb5-dev && apt-get -y install mesos=1.5.0-2.0.1

RUN apt-get -y install openjdk-8-jdk \
  && update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

### Environment variables

## Environment variables control the behavior of the Mesos scheduler driver (libmesos).
ENV LIBPROCESS_PORT=8083 GLOG_v=0

## Flags that control the behavior of the JVM.
ENV JAVA_OPTS='-Djava.library.path=/usr/local/lib'

### Run Aurora

COPY entrypoint.sh /
COPY security.ini /etc/aurora/
ENTRYPOINT ["/entrypoint.sh"]
