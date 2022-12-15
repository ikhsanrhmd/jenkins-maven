#!/bin/bash

echo "***************"
echo "******push*****"

IMAGE="jenkins-maven"

echo "** Loggin in **"
docker login -u ikhsanrhmd -p $PASS
echo "*****Taggin image****"
docker tag $IMAGE:$BUILD_TAG ikhsanrhmd/$IMAGE:$BUILD_TAG

echo "***"
docker push ikhsanrhmd/$IMAGE:$BUILD_TAG
