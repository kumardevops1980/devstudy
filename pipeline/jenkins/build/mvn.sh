#!/bin/bash

echo "****************************"
echo "**********Build jar ********"
echo "****************************"

docker run --rm -v $PWD/java-app:/app -v /root/.m2:/root/.m2/ -w /app  maven:3.8.4-ibmjava-8-alpine "$@"
