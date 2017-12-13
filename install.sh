# Update the apt package index
sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS
sudo apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg2 \
	software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -

# Verify that you now have the key with the follwoing fingerprint: 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
sudo apt-key fingerprint 0EBFCD88

# Set up the stable repository
sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
	$(lsb_release -cs) \
	stable"

# Update the apt package index
sudo apt-get update

# Install the latest version of Docker CE
sudo apt-get install docker-ce
