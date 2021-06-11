#!/bin/bash

JENKINS_HOME=/var/jenkins_home/
JENKINS_PORT=8080
JENKINS_NAME=jenkins-blueocean
JENKINS_IMAGE=myjenkins-blueocean:latest

echo "docker image build start"
docker build -t $JENKINS_IMAGE .

if [ $? -ne 0 ]; then
	echo "docker image build fail"
	exit 100
else
	echo "docker image build succed"
fi

