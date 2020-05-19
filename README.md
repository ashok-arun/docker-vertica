# Running Vertica Community Edition with Docker

Run the Vertica CE with Docker, the quickest and easiest way to try out Vertica with a single computer.

[Vertica](https://www.vertica.com/) is a massively scalable analytics data warehouse. With Vertica you can store your data and perform analytics on it all in one place.

The [Vertica CE](https://www.vertica.com/download/vertica/community-edition/) is the community edition of Vertica, limited to up to 1TB of data across 3 nodes. This repository will get you up and running with Vertica CE on a single node in less than 30 minutes.

## Prerequisites

Install [Docker Desktop](https://www.docker.com/get-started) (no need to make a Docker account, it works without). If Docker Desktop is not available for your platform (e.g. Ubuntu) all you need is the docker engine, which you can get [here](https://docs.docker.com/engine/install/).

## Instructions
### Creating and connecting to a database
1. Clone this repository on your computer, all commands must be run from the base directory `vertica-docker/`.
2. Launch Docker. If you just installed it, it should already be running.
 - MacOS: Hit CMD-SPACE, then type Docker and hit ENTER.
 - Windows: Search for Docker in the start menu and click on it
 - Linux: https://docs.docker.com/config/daemon/systemd/
3. Open up a terminal window on your computer and run ```./start_vertica.sh```

   This runs a new docker container and starts up Vertica within it.

4. Connect to the container with ```./connect-vertica.sh```. This drops you into a bash prompt within the container.
5. In this bash prompt, run `/opt/vertica/bin/vsql` to connect to the actual database. From here you can run SQL commands.

### Creating tables and importing data

TODO

## References and contributions

Thanks to [jbfavre](https://github.com/jbfavre/docker-vertica) for doing all the heavy lifting wrt to Dockerfiles and scripts.
