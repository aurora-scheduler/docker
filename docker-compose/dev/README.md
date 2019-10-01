## Instructions

1. Clone aurora

    `$ git clone https://github.com/apache/aurora.git`

1. Copy docker-compose.yml to the root of the Aurora project.

1. Perform changes desired changes

1. Compile Aurora using gradle with install directory

    `$ ./gradlew installDist`

1. Run local cluster using docker-compose

    `$ docker-compose up -d`

1. When making changes, recompile locally and restart aurora-dev container.

    `$ docker restart aurora-one-dev_1`

* NOTE: This compose file is NOT responbile for creating a container which contains the client code.
  Docker-compose is also not responsible for compiling code, this is all done on the local machine.
