#!/bin/bash
set -e

echo "zookeeper: $ZOOKEEPER_HOST:$ZOOKEEPER_PORT"
sed -i "s/^\(zookeeper\.connect\s*=\s*\).*\$/\1$ZOOKEEPER_HOST\:$ZOOKEEPER_PORT/" etc/kafka/server.properties

#while ! nc -z $ZOOKEEPER_HOST $ZOOKEEPER_PORT;
#do sleep 0.1 && echo 'zookeeper down!';
#done;
#echo 'zookeeper is up!'

exec "$@"
