#!/bin/bash

echo jenkins-maven > /tmp/.auth
echo 10 >> /tmp/.auth
echo $PASS >> /tmp/.auth


scp /tmp/.auth prod-user@192.168.56.106:/tmp/.auth
scp ./jenkins/deploy/publish.sh prod-user@192.168.56.106:/tmp/publish
ssh prod-user@192.168.56.106 "/tmp/publish"
