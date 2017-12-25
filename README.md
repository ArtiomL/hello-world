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
docker build -t hello-world .
```

#### `pull`
```
docker pull artioml/hello-world
```

#### `run`
```
docker run -dit -p 80:8080 --name hello artioml/hello-world
```

#### `logs`
```
docker logs -f hello
```

#### `exec`
```
docker exec -it hello /bin/sh
sed -i 's/Node.js app/Node.js app v2.0/' index.js
```

#### `commit`
```
docker commit hello hello-world:2.0
```

&nbsp;&nbsp;

## Next

- [Fork](https://github.com/artioml/hello-world/fork) and build it yourself
- Start using [adct](https://github.com/ArtiomL/adct)
- Contribute!
