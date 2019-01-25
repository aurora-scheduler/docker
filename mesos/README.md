First build the mesos image and then build the mesos-master and mesos-agent images.

This way mesos-agent and mesos-master can share a consistent base layer.
