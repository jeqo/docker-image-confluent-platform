#!/bin/bash
set -e

sed -i "s|^\(zookeeper\.connect\s*=\s*\).*\$|\1$ZOOKEEPER_CONNECT|" etc/kafka/server.properties
sed -i "s|^\(broker\.id\s*=\s*\).*\$|#broker\.id=|" etc/kafka/server.properties
sed -i "s|\(log\.dirs=\).*\$|\1${KAFKA_LOGS}|" etc/kafka/server.properties
sed -i "s|^\(num\.partitions\s*=\).*\$|\1$NUM_PARTITION|" etc/kafka/server.properties
sed -i "s|^\(#listeners\s*=\).*\$|listeners=PLAINTEXT://$HOSTNAME:$KAFKA_PORT|" etc/kafka/server.properties
sed -i "s|^\(#advertised\.listeners\s*=\).*\$|advertised\.listeners=PLAINTEXT://$HOSTNAME:$KAFKA_PORT|" etc/kafka/server.properties

exec "$@"
