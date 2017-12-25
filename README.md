# <img align="center" src="img/docker.svg" width="96">&nbsp;&nbsp;hello, world

[![Build Status](https://travis-ci.org/ArtiomL/hello-world.svg?branch=master)](https://travis-ci.org/ArtiomL/hello-world)
[![Docker Hub](https://img.shields.io/docker/pulls/artioml/hello-world.svg)](https://hub.docker.com/r/artioml/hello-world/)

&nbsp;&nbsp;

## Table of Contents
- [Description](#description)
- [Documentation](#documentation)
- [Lab](#lab)
	- [build](#build)
	- [pull](#pull)
	- [run](#run)
	- [logs](#logs)
	- [exec](#exec)
	- [diff](#diff)
	- [commit](#commit)
	- [rm](#rm)
	- [top](#top)
	- [stats](#stats)
	- [kill](#kill)
	- [--publish-all](#publishall)
- [Next](#next)
- [License](LICENSE)


&nbsp;&nbsp;

## Description

Containers Training: Hands-on introduction to Docker.

&nbsp;&nbsp;

## Documentation

Start [here](https://github.com/wsargent/docker-cheat-sheet).

&nbsp;&nbsp;

## Lab

#### `build`
```shell
git clone https://github.com/ArtiomL/hello-world.git
cd hello-world
# Build an image from a Dockerfile
docker build -t hello-world .
# List images
docker images
```

#### `pull`
```shell
# Pull an image or a repository from a registry
docker pull artioml/hello-world
```

#### `run`
```shell
docker run -dit -p 80:8080 artioml/hello-world
# List running containers
docker ps
# Test and crash the app
curl http://127.0.0.1/app
curl http://127.0.0.1/kill
# Run again and assign a name
docker run -dit -p 80:8080 --name dhw artioml/hello-world
```

#### `logs`
```shell
docker logs -f dhw
```

#### `exec`
```shell
# Run a command in a running container
docker exec -it dhw /bin/sh
# Update the app
sed -i 's/Node.js app/Node.js app v2.0/' index.js
exit
```

#### `diff`
```shell
# Inspect changes to files or directories on a container's filesystem
docker diff dhw
```

#### `commit`
```shell
# Create a new image from a container's changes
docker commit dhw hello-world:2.0
```

#### `rm`
```shell
# Remove a container
docker rm -f dhw
# Run and restart if the container exits with a non-zero exit status
docker run -dit -p 80:8080 --name dhw --restart on-failure hello-world:2.0
# Test and crash the app
curl http://127.0.0.1/app
curl http://127.0.0.1/kill
docker logs -f dhw
```

#### `top`
```shell
# Display the running processes of a container
docker top dhw
```

#### `stats`
```shell
# Display a live stream of container(s) resource usage statistics
docker stats dhw
```

#### `kill`
```shell
# Kill one or more running containers
docker kill dhw
```

#### `--publish-all`
```shell
# Publish all exposed ports to random ports (multiple instances)
for i in {1..3}; do
	docker run -ditP hello-world:2.0
done
# List running containers and examine the ports
docker ps
```

&nbsp;&nbsp;

## Next

- [Fork](https://github.com/artioml/hello-world/fork) and build it yourself
- Configure [automated builds](https://docs.docker.com/docker-hub/github/) on Docker Hub
- Setup Continuous Integration with [Travis CI](https://travis-ci.org/)
- Start using [adct](https://github.com/ArtiomL/adct)
- Contribute!
