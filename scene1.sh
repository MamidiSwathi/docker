#!/bin/sh
docker run -it centos
yum install httpd -y 
service httpd start
service httpd status
