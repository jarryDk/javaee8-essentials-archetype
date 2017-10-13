#!/bin/sh
mvn clean package && sudo docker build -t ${groupId}/${artifactId} .
sudo docker rm -f ${artifactId} || true && sudo docker run -d -p 8080:8080 -p 4848:4848 --name ${artifactId} ${groupId}/${artifactId} 
