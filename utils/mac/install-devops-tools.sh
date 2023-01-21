#!/bin/bash

# Check if HomeBrew is installed, and install it if it is not
if ! command -v brew &> /dev/null; then
  echo "HomeBrew is not installed. Installing HomeBrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "HomeBrew is already installed."
fi

# Check if Git is installed, and install it if it is not
if ! command -v git &> /dev/null; then
  echo "Git is not installed. Installing Git..."
  brew install git
else
  echo "Git is already installed."
fi

# Check if Terraform is installed, and install it if it is not
if ! command -v terraform &> /dev/null; then
  echo "Terraform is not installed. Installing Terraform..."
  brew install terraform
else
  echo "Terraform is already installed."
fi

# Check if Visual Studio Code is installed, and install it if it is not
if ! command -v code &> /dev/null; then
  echo "Visual Studio Code is not installed. Installing Visual Studio Code..."
  brew cask install visual-studio-code
else
  echo "Visual Studio Code is already installed."
fi

# Check if Azure CLI is installed, and install it if it is not
if ! command -v az &> /dev/null; then
  echo "Azure CLI is not installed. Installing Azure CLI..."
  brew install azure-cli
else
  echo "Azure CLI is already installed."
fi

# Check if DBeaver is installed, and install it if it is not
if ! command -v dbeaver &> /dev/null; then
  echo "DBeaver is not installed. Installing DBeaver..."
  brew cask install dbeaver-community
else
  echo "DBeaver is already installed."
fi

# Check if Studio 3T is installed, and install it if it is not
if ! command -v studio3t &> /dev/null; then
  echo "Studio 3T is not installed. Installing Studio 3T..."
  brew cask install studio-3t
else
  echo "Studio 3T is already installed."
fi

# Check if Docker is installed, and install it if it is not
if ! command -v docker &> /dev/null; then
  echo "Docker is not installed. Installing Docker..."
  brew cask install docker
else
  echo "Docker is already installed."
fi

# Run Docker and test it
echo "Starting Docker..."
open --background -a Docker
echo "Waiting for Docker to start..."
sleep 30
echo "Docker is running."

# Check if K8S is enabled in Docker, and enable it if it is not
if ! docker version | grep -q "Kubernetes: enabled"; then
  echo "Kubernetes is not enabled in Docker. Enabling Kubernetes in Docker..."
  docker run --rm --privileged --pid=host justincormack/nsenter1
  launchctl unload /Library/LaunchDaemons/com.docker.hyperkit.plist
  launchctl load /Library/LaunchDaemons/com.docker.hyperkit.plist
  launchctl stop com.docker.vmnetd
  launchctl start com.docker.vmnetd
  open --background -a Docker
  echo "Waiting for Kubernetes to be enabled in Docker..."
  sleep 30
  echo "Kubernetes is now enabled in Docker."
else
  echo "Kubernetes is already enabled in Docker."
fi

# Check if kubectl is installed, and install it if it is not
if ! command -v kubectl &> /dev/null; then
  echo "kubectl is not installed. Installing kubectl..."
  brew install kubernetes-cli
else
  echo "kubectl is already installed."
fi