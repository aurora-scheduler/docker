FROM ubuntu:xenial

### Install necessary packages

# Add Mesosphere repository
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E56151BF && echo deb http://repos.mesosphere.io/ubuntu xenial main > /etc/apt/sources.list.d/mesosphere.list

# Install required libraries including mesos for the libmesos
RUN apt-get update && apt-get -y install curl openjdk-8-jre-headless mesos=1.6.2-2.0.1.ubuntu1604 python2.7

# Download Aurora Scheduler deb file
RUN curl -Lko /tmp/aurora-scheduler.deb "https://dl.bintray.com/rdelvalle/aurora/ubuntu-xenial/aurora-scheduler_0.22.0_amd64.deb" && \
  curl -Lko /tmp/aurora-scheduler.deb.asc "https://dl.bintray.com/rdelvalle/aurora/ubuntu-xenial/aurora-scheduler_0.22.0_amd64.deb.asc"

# Verify the download has been signed with the right key
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys 91ACFC4110A6A9BB695D825CCC1B456F5653E182 && \
  gpg --verify /tmp/aurora-scheduler.deb.asc /tmp/aurora-scheduler.deb

# Install Aurora Scheduler
RUN dpkg -i /tmp/aurora-scheduler.deb

### Environment variables

## Environment variables control the behavior of the Mesos scheduler driver (libmesos).
ENV LIBPROCESS_PORT=8083 GLOG_v=0

## Flags that control the behavior of the JVM.
ENV JAVA_OPTS='-Djava.library.path=/usr/local/lib'

### Run Aurora

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
