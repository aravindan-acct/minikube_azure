#! /bin/bash

sudo apt update -y
sudo apt install -y curl wget apt-transport-https
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod +x /usr/local/bin/minikube
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
echo "permissions set for kubectl"
chmod +x kubectl
echo "moving kubectl to /usr/local/bin"
sudo mv kubectl /usr/local/bin/
echo "installing docker"
sudo apt install -y docker.io

#sudo usermod -aG docker $USER && newgrp docker

