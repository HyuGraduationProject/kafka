#!/bin/sh

echo "[zookeeper start]"
bin/zookeeper-server-start.sh -daemon config/zookeeper.properties
echo ""

echo "[kafka-start]"
bin/kafka-server-start.sh -daemon config/server.properties
echo ""

echo "[test]"
netstat -an | grep 2181
echo ""

# echo "[create topic]"
# bin/kafka-topics.sh --create --topic new-topic --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1
# echo ""

# echo "[check topic]"
# bin/kafka-topics.sh --list --bootstrap-server localhost:9092
# echo ""
