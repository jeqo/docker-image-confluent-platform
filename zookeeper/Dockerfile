FROM jeqo/confluent-platform-base

MAINTAINER Jorge Quilcate <quilcate.jorge@gmail.com>

ENV ZOOKEEPER_LOGS /tmp/zookeeper
ENV ZOOKEEPER_PORT 2181

WORKDIR $CONFLUENT_HOME

EXPOSE $ZOOKEEPER_PORT

VOLUME $ZOOKEEPER_LOGS

CMD [ "bin/zookeeper-server-start", "etc/kafka/zookeeper.properties" ]
