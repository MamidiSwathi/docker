#!/bin/sh
yum remove docker docker-common docker-selinex docker-engine docker-ce
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce -y -y
systemctl start docker
docker run -it centos
yum install httpd -y 
service httpd stop
service httpd start
echo success 
