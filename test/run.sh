#!/bin/bash

set -xeo pipefail

REPO="artioml/hello-world"

docker run -dit -p 80:8080 $REPO
sleep 3
docker ps -a
curl -s http://127.0.0.1/ | grep 'hello, world'
