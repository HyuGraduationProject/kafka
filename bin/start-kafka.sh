rm -rf /tmp/kafka-logs/*

#!/bin/sh
echo "[prometheus restart]"
brew services restart prometheus
sleep 1.

echo "[zookeeper start]"
bin/zookeeper-server-start.sh -daemon config/zookeeper.properties
echo ""

sleep 1.5
echo "[kafka-start]"
bin/kafka-server-start.sh config/server.properties
echo ""

