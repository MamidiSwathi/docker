#!/bin/sh
systemctl stop docker

echo stopped

systemctl start docker

echo started


