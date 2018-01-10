# <img align="center" src="img/docker.svg" width="96">&nbsp;&nbsp;hello, world

[![Build Status](https://travis-ci.org/ArtiomL/hello-world.svg?branch=master)](https://travis-ci.org/ArtiomL/hello-world)
[![Docker Hub](https://img.shields.io/docker/pulls/artioml/hello-world.svg)](https://hub.docker.com/r/artioml/hello-world/)

&nbsp;&nbsp;

## Table of Contents
- [Description](#description)
- [Documentation](#documentation)
- [Lab](#lab)
	- [monolith](#monolith)
	- [usermod](#usermod)
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
	- [--publish-all](#-p---publish-all)
- [Next](#next)
- [License](LICENSE)


&nbsp;&nbsp;

## Description

Containers Training: Hands-on introduction to Docker and CI/CD.

&nbsp;&nbsp;

## Documentation

Start [here](https://github.com/veggiemonk/awesome-docker) and [there](https://github.com/wsargent/docker-cheat-sheet).

&nbsp;&nbsp;

## Lab

#### `monolith`
```shell
# Install Node.js
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
git clone https://github.com/ArtiomL/hello-world.git
cd hello-world
# Install dependencies
npm install
# Run
node index.js &
# Test and crash the app
curl http://127.0.0.1:8080/app
curl http://127.0.0.1:8080/kill
curl http://127.0.0.1:8080/app
# Restore snapshot
```

&nbsp;

#### `usermod`
```shell
# Install Docker CE
curl -fsSL https://get.docker.com | sh
# Manage Docker as a non-root user
sudo usermod -aG docker $USER
# Log out and log back in so that your group membership is re-evaluated
```

&nbsp;

#### `build`
```shell
git clone https://github.com/ArtiomL/hello-world.git
cd hello-world
# Build an image from a Dockerfile
docker build -t hello-world .
# List images
docker images
```

&nbsp;

#### `pull`
```shell
# Pull an image or a repository from a registry
docker pull artioml/hello-world
```

&nbsp;

#### `run`
```shell
docker run -dit -p 80:8080 artioml/hello-world
# List running containers
docker ps
# Display listening server sockets (note docker-proxy)
sudo netstat -lnp | grep ':::80'
# Test and crash the app
curl http://127.0.0.1/app
curl http://127.0.0.1/kill
curl http://127.0.0.1/app
# Run again and assign a name
docker run -dit -p 80:8080 --name dhw artioml/hello-world
```

&nbsp;

#### `logs`
```shell
# Fetch the logs of a container (follow output)
docker logs -f dhw
```

&nbsp;

#### `exec`
```shell
# Run a command (as root) in a running container
docker exec -it -u 0 dhw /bin/sh
# Update the app
sed -i 's/Node.js app/Node.js app v2.0/' index.js
exit
```

&nbsp;

#### `diff`
```shell
# Inspect changes to files or directories on a container's filesystem
docker diff dhw
```

&nbsp;

#### `commit`
```shell
# Create a new image from a container's changes
docker commit dhw hello-world:2.0
```

&nbsp;

#### `rm`
```shell
# Remove a container
docker rm -f dhw
# Run (new version) and restart if the container exits with a non-zero exit status
docker run -dit -p 80:8080 --name dhw --restart on-failure hello-world:2.0
# Test and crash the app
curl http://127.0.0.1/app
curl http://127.0.0.1/kill
docker ps
curl http://127.0.0.1/app
docker logs -f dhw
```

&nbsp;

#### `top`
```shell
# Display the running processes of a container (note UID)
docker top dhw
```

&nbsp;

#### `stats`
```shell
# Display a live stream of container(s) resource usage statistics
docker stats dhw
```

&nbsp;

#### `kill`
```shell
# Kill one or more running containers
docker kill dhw
```

&nbsp;

#### `-P, --publish-all`
```shell
# Publish all exposed ports to random ports (multiple instances)
for i in {1..3}; do
	docker run -ditP hello-world:2.0
done
# List running containers and examine the ports
docker ps
# Display listening server sockets (note docker-proxy)
sudo netstat -lnp | grep ':::32'
```

&nbsp;&nbsp;

## Next

- [Fork](https://github.com/artioml/hello-world/fork) and build it yourself ([Dockerfile](Dockerfile))
- Configure [automated builds](https://docs.docker.com/docker-hub/github/) on Docker Hub
- Setup Continuous Integration with [Travis CI](https://docs.travis-ci.com/user/languages/javascript-with-nodejs/) ([example](.travis.min.yml))
- Deploy to [Heroku](https://devcenter.heroku.com/articles/container-registry-and-runtime) ([heroku.sh](heroku.sh))
- **Advanced**: Automate the entire CI/CD pipeline, add Slack notifications ([.travis.yml](.travis.yml))
- Start using [adct](https://github.com/ArtiomL/adct) or [f5-hello-world](https://github.com/f5devcentral/f5-hello-world)
- Contribute!
