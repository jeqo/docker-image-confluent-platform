FROM tmp-confluent

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

USER kafka

ENV CONFLUENT_HOME=/opt/confluent/confluent-3.0.0 \
    PATH=$PATH:$CONFLUENT_HOME/bin

WORKDIR $CONFLUENT_HOME

ADD schema-registry.properties ./etc/schema-registry/schema-registry-docker.properties

# Ports being exposed
EXPOSE 2181

# Start asadmin console and the domain
CMD [ \
      "sh", "-c", \
      "while ! nc -z zookeeper 2181; do sleep 0.1; done; echo 'zookeeper is up!' && ./bin/schema-registry-start ./etc/schema-registry/schema-registry-docker.properties" \
    ]
