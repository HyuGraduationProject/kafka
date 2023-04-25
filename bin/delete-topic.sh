echo "[delete topic]"
bin/kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic $1
echo ""

echo "[check topic]"
bin/kafka-topics.sh --list --bootstrap-server localhost:9092
echo ""