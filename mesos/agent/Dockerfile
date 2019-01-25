FROM rdelvalle/mesos:1.4.2

### Install Aurora's default executor

# Download Thermos deb file
RUN curl -Lko /tmp/aurora-executor.deb "https://dl.bintray.com/rdelvalle/aurora/ubuntu-xenial/aurora-executor_0.20.0_amd64.deb"

# Install Thermos
RUN dpkg -i /tmp/aurora-executor.deb

# Add testing user, in this case vagrant for backwards compatibility
RUN useradd vagrant

ENTRYPOINT ["mesos-slave"]
