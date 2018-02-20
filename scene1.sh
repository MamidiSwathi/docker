#!/bin/sh
yum remove docker docker-common docker-selinex docker-engine docker-ce
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce -y -y
systemctl start docker
docker rexec -it 549fb85c960f /bin/bash
yum install httpd -y 
service httpd start
service httpd status
 
