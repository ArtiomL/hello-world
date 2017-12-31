#!/bin/bash

# Add Heroku apt repository and install the CLI
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install heroku

# Login to Heroku
heroku login

# Login to Container Registry
heroku container:login

# Clone the repository
git clone https://github.com/ArtiomL/hello-world.git
cd hello-world

# Create a Heroku app
heroku apps:create --region eu

# Build the image and push to Container Registry
heroku container:push web
