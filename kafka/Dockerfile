FROM jeqo/confluent-platform:3.0.0

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

ENV ZOOKEEPER_HOST=localhost \
    ZOOKEEPER_PORT=2181

EXPOSE 9092

USER root
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

USER $CONFLUENT_USER

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD [ "kafka-server-start", "etc/kafka/server.properties" ]
