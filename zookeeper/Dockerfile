FROM tmp-confluent

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

USER kafka

ENV CONFLUENT_HOME=/opt/confluent/confluent-3.0.0 \
    PATH=$PATH:$CONFLUENT_HOME/bin

WORKDIR $CONFLUENT_HOME

# Ports being exposed
EXPOSE 2181

# Start asadmin console and the domain
CMD ["sh", "-c", "./bin/zookeeper-server-start ./etc/kafka/zookeeper.properties"]
