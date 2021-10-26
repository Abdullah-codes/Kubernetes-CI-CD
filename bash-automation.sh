#!/bin/bash

which kubectl

# if [ $? -eq 0 ]
# then
#   echo "kubectl is installed"
# else
#   curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
#   sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
#   kubectl version --client 
#   echo "kubectl is was not installed and now installed successfully"
# fi


which aws

if [ $? -eq 0 ]
then
  echo "aws cli is installed"
else
  pwd 
  # sudo apt install unzip
  # curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
  # unzip awscliv2.zip
  echo $HOME
  # mkdir bin
  # ./aws/install -i /var/lib/jenkins/workspace/Project-3-kubernetes-app/aws-cli -b /var/lib/jenkins/workspace/Project-3-kubernetes-app/bin
  # aws --version
  echo "aws cli is was not installed and now installed successfully"
fi

