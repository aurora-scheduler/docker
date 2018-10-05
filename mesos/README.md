Build base Mesos image first and then mesos-agent and mesos-master images.

This way mesos-agent and mesos-master can share a consistent base layer.
