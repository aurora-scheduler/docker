FROM rdelvalle/mesos:1.6.2

### Install Aurora's default executor

# Download Thermos deb file
RUN curl -Lko /tmp/aurora-executor.deb "https://dl.bintray.com/rdelvalle/aurora/ubuntu-xenial/aurora-executor_0.22.0_amd64.deb" && \
  curl -Lko /tmp/aurora-executor.deb.asc "https://dl.bintray.com/rdelvalle/aurora/ubuntu-xenial/aurora-executor_0.22.0_amd64.deb.asc"

# Verify the download has been signed with the right key
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys 91ACFC4110A6A9BB695D825CCC1B456F5653E182 && \
  gpg --verify /tmp/aurora-executor.deb.asc /tmp/aurora-executor.deb

# Install Thermos
RUN dpkg -i /tmp/aurora-executor.deb

# Add testing user, in this case vagrant for backwards compatibility
RUN useradd vagrant

ENTRYPOINT ["mesos-slave"]
