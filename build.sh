#!/usr/bin/env bash

#Build image
docker build --tag=clickecho .

#List contatiner

docker image ls

#Run contatiner

docker run -it clickecho python app.py --name "Manjima Sarkar"