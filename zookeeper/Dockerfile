FROM ubuntu:xenial

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install --no-install-recommends -y zookeeper && \
    rm /etc/zookeeper/conf/zoo.cfg && \
    rm /var/lib/zookeeper/myid

COPY ./run.sh /run.sh
ENTRYPOINT ["/run.sh"]
