#!/usr/bin/env bash

#Setting up the environment
aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 739275444504.dkr.ecr.eu-central-1.amazonaws.com

# Create and upload the image
docker build -t my-node-app .
docker tag my-node-app:latest 739275444504.dkr.ecr.eu-central-1.amazonaws.com/my-node-app:latest
docker push 739275444504.dkr.ecr.eu-central-1.amazonaws.com/my-node-app:latest
echo 'Starting deployment...'