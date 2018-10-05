FROM ubuntu:xenial

# Install necessary dependencies for Aurora and Docker
RUN apt-get update && apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    python2.7

### Add Docker CE Repository

# Get Docker signing key
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Add Docker as a repository
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

###  Add Mesosphere repo and install Mesos Master

RUN echo "deb http://repos.mesosphere.io/ubuntu/ $(lsb_release -cs) main" > /etc/apt/sources.list.d/mesosphere.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
  apt-get -y update && \
  apt-get -y install openjdk-8-jre-headless docker-ce mesos=1.5.1-2.0.2  && \
  apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["mesos-master"]
