FROM jeqo/confluent-platform-base

ENV SCHEMA_REGISTRY_PORT 8081
ENV ZOOKEEPER_HOST=zookeeper
ENV ZOOKEEPER_PORT=2181

WORKDIR $CONFLUENT_HOME

EXPOSE $SCHEMA_REGISTRY_PORT

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD [ "bin/schema-registry-start", "etc/schema-registry/schema-registry.properties"]

#HEALTHCHECK --interval=5s --timeout=3s \
# CMD bin/kafka-topics.sh --zookeeper $ZOOKEEPER_CONNECT --list || exit 1
