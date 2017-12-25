# <img align="center" src="img/docker.svg" width="96">&nbsp;&nbsp;hello, world

[![Build Status](https://travis-ci.org/ArtiomL/hello-world.svg?branch=master)](https://travis-ci.org/ArtiomL/hello-world)
[![Docker Hub](https://img.shields.io/docker/pulls/artioml/hello-world.svg)](https://hub.docker.com/r/artioml/hello-world/)

&nbsp;&nbsp;

## Table of Contents
- [Description](#description)
- [Documentation](#documentation)
- [Lab](#lab)
	- [Build](#build)
	- [Pull](#pull)
	- [Run](#run)
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

#### Build
```shell
git clone https://github.com/ArtiomL/hello-world.git
cd hello-world
docker build -t hello-world .
```

#### Pull
```
docker pull artioml/hello-world
```

#### Run
```
docker run -dit -p 80:8080 --name hello artioml/hello-world
```

&nbsp;&nbsp;

## Next

- [Fork](https://github.com/artioml/hello-world/fork) and build it yourself
- Start using [adct](https://github.com/ArtiomL/adct)
- Contribute!
