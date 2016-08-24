FROM jeqo/confluent-platform:3.0.0-jdk8

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

# Ports being exposed
EXPOSE 2181

# Start asadmin console and the domain
CMD ["sh", "-c", "./bin/zookeeper-server-start ./etc/kafka/zookeeper.properties"]
