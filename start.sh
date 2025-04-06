#!/bin/bash


IMAGE_NAME="my-ngnix-app"


docker build -t $IMAGE_NAME .
docker run -d -p 3000:80 $IMAGE_NAME


