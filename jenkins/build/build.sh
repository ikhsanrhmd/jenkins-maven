#!/bin/bash

#Copy jar to build location

cp -f java-app/target/*.jar jenkins/build

echo "************************"
echo "**build docker images**"
echo "************************"

cd jenkins/build && docker-compose -f docker-compose-build.yaml build --no-cache
