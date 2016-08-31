FROM jeqo/confluent-platform:3.0.0

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

ENV ZOOKEEPER_HOST=localhost \
    ZOOKEEPER_PORT=2181

EXPOSE 8081

USER root
ADD docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

USER $CONFLUENT_USER
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD [ "schema-registry-start", "etc/schema-registry/schema-registry.properties"]
