#!/bin/bash

echo "******************"
echo "***building jar***"
echo "******************"

WORKSPACE=/opt/jenkins/jenkins_home/workspace/pipeline-compose-with-github
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2/ -w /app maven:3-alpine "$@"
