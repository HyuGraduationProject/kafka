#!/bin/sh

echo "[zookeeper start]"
bin/zookeeper-server-start.sh -daemon config/zookeeper.properties
echo ""

sleep .5
echo "[kafka-start]"
bin/kafka-server-start.sh -daemon config/server.properties
echo ""

sleep .5
echo "[test]"
netstat -an | grep 2181
lsof -i :2181
echo ""

