echo "[create topic]"
bin/kafka-topics.sh --create --topic $1 --bootstrap-server localhost:9092 --replication-factor 1 --partitions 3
echo ""

echo "[check topic]"
bin/kafka-topics.sh --list --bootstrap-server localhost:9092
echo ""
