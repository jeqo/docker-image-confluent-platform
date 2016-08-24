FROM jeqo/confluent-platform:3.0.0-jdk8

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

ADD schema-registry.properties ./etc/schema-registry/schema-registry-docker.properties

# Ports being exposed
EXPOSE 8081

# Start asadmin console and the domain
CMD [ \
      "sh", "-c", \
      "while ! nc -z zookeeper 2181; do sleep 0.1; done; echo 'zookeeper is up!' && ./bin/schema-registry-start ./etc/schema-registry/schema-registry-docker.properties" \
    ]
