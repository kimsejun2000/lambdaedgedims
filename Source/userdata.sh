#!/bin/bash
yum -y update && yum -y install docker

service docker start
chkconfig docker on

mkdir /home/ec2-user/dist
mkdir /home/ec2-user/dist/dist
mkdir /home/ec2-user/dist/lambda
mkdir /home/ec2-user/dist/lambda/viewer-request-function
mkdir /home/ec2-user/dist/lambda/origin-response-function

wget https://raw.githubusercontent.com/kimsejun2000/lambdaedgedist/master/Source/Viewer-Request.js -O /home/ec2-user/dist/lambda/viewer-request-function/index.js
wget https://raw.githubusercontent.com/kimsejun2000/lambdaedgedist/master/Source/Origin-Response.js -O /home/ec2-user/dist/lambda/origin-response-function/index.js
wget https://raw.githubusercontent.com/kimsejun2000/lambdaedgedist/master/Source/Dockerfile -O /home/ec2-user/dist/Dockerfile

cd /home/ec2-user/dist
docker build --tag amazonlinux:nodejs .

chmod 775 /home/ec2-user/dist
chown -R ec2-user:ec2-user /home/ec2-user/dist