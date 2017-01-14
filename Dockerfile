FROM java:8-jre

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

ARG confluent_version
ARG confluent_release
ARG confluent_scala_version
ARG confluent_base_url

ENV CONFLUENT_VERSION ${confluent_version:-3.1}
ENV CONFLUENT_RELEASE ${confluent_release:-3.1.1}
ENV CONFLUENT_SCALA_VERSION ${confluent_scala_version:-2.11}

ENV CONFLUENT_HOME=/opt/confluent
ENV CONFLUENT_BASE_URL ${confluent_base_url:-http://packages.confluent.io}
ENV CONFLUENT_URL "$CONFLUENT_BASE_URL/archive/$CONFLUENT_VERSION/confluent-oss-$CONFLUENT_RELEASE-$CONFLUENT_SCALA_VERSION.tar.gz"

WORKDIR /opt

RUN echo $CONFLUENT_URL
RUN wget -O - $CONFLUENT_URL | tar zxf - && \
    mv /opt/confluent-$CONFLUENT_RELEASE $CONFLUENT_HOME
