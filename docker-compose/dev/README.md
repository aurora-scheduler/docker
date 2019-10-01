## Instructions

1. Clone aurora

`$ git clone https://github.com/apache/aurora.git`

1. Perform changes desired changes

1. Compile using gradle with install directory

`$ ./gradlew installDist`

1. When making changes, recompile locally and restart aurora-dev container.

`$ docker restart aurora-one-dev_1`
