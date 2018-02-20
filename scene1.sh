#!/bin/sh
cd /var/tmp/session
docker run -it centos
yum install httpd -y 
service httpd start
service httpd status
echo "success"
