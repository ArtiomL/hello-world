#!/bin/bash

# Install Travis CLI
sudo apt-get install build-essential ruby ruby-dev
sudo gem install travis

# Replace ArtiomL with your GitHub username after forking
git clone https://github.com/ArtiomL/hello-world.git
cd hello-world

# Encrypt Docker Hub credentials
travis encrypt DOCKER_USER="username"
travis encrypt DOCKER_PASS="password"

# Encrypt Heroku API key
travis encrypt "api_key"

# Encrypt Slack token
travis encrypt "workspace:token"

# travis encrypt defaults to travis-ci.org (--org), for travis-ci.com use:
travis login --pro --github-token personal_access_token
travis encrypt SOMEVAR="secretvalue" --com
