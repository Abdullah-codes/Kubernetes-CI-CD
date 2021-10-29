#!/bin/bash

# which kubectl
$HOME/bin/kubectl 

if [ $? -eq 0 ]
then
  echo "kubectl is installed"
else
  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
  chmod +x kubectl
  mkdir $HOME/bin
  install -o $USER -g $USER -m 0755 kubectl $HOME/bin
  echo "kubectl  was not installed and now installed successfully"
fi


# which aws

$HOME/bin/aws --version

if [ $? -eq 0 ]
then
  echo "aws cli is installed"
else
  pwd 
  sudo apt install unzip
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
  unzip awscliv2.zip
  echo $HOME
  # mkdir $HOME/bin
  ./aws/install -i $HOME/aws-cli -b $HOME/bin
  aws --version
  echo "aws cli is was not installed and now installed successfully"
fi

# configuring kubectl to use kubernetes cluster

# $HOME/bin/aws eks --region us-east-2 update-kubeconfig --name education-eks-DBNYMYb6

#giving aws command path to config file (beacuse we installed aws cli in jenkins user) 
# sed -i '$s/aws/\/var\/lib\/jenkins\/bin\/aws/g' $HOME/.kube/config 