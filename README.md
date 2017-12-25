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
	- [commit](#commit)
	- [rm](#rm)
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
docker run -dit -p 80:8080 --name dhw artioml/hello-world
# List containers
docker ps
```

#### `logs`
```shell
docker logs -f dhw
```

#### `exec`
```shell
# Run a command in a running container
docker exec -it dhw /bin/sh
sed -i 's/Node.js app/Node.js app v2.0/' index.js
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
docker run -dit -p 80:8080 --name dhw hello-world:2.0
docker logs -f dhw
```

&nbsp;&nbsp;

## Next

- [Fork](https://github.com/artioml/hello-world/fork) and build it yourself
- Start using [adct](https://github.com/ArtiomL/adct)
- Contribute!
