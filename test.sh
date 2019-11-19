#!/bin/bash

# remove the container if exists or running 
if [ $(docker container ls -q --filter name=mydb_c) != '' ]; then
    docker container stop mydb_c
    docker container rm mydb_c
fi

# remove the image if exists
if [ $(docker image ls -q --filter reference=mydb) != '' ]; then
    docker image rm mydb
fi

# build the image
docker build . -t mydb 

# start the container
docker run -d -p 3307:3306 --name mydb_c mydb
