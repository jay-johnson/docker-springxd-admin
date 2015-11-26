#!/usr/bin/env bash

log="/tmp/xdadmin.log"

export HSQL_SERVER_HOST=hsqldb
export HSQL_SERVER_PORT=9101

export ZK_CLIENT_CONNECT=zookeeper1:2181

export SPRING_REDIS_HOST=redis1
export SPRING_REDIS_PORT=6379

echo "" > $log
echo "Admin waiting for Zookeeper to Start" >> $log
/bin/date >> $log
sleep 5
echo "" >> $log
/bin/date >> $log
echo "Admin done waiting for Zookeeper to Start" >> $log
pwd >> $log

echo "Starting Admin" >> $log
pushd /opt/spring-xd/ >> $log
./xd/bin/xd-admin 
popd >> $log

