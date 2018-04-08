#!/bin/bash

BASE_SERVER=192.168.248.129
yum install -y wget
wget $BASE_SERVER/soft/jdk-8u144-linux-x64.tar.gz
tar -zxvf jdk-8u144-linux-x64.tar.gz -C /usr/local/src
cat >> /etc/profile << EOF
export JAVA_HOME=/usr/local/src/jdk1.8.0_144
export PATH=.:$JAVA_HOME/bin:$PATH
EOF