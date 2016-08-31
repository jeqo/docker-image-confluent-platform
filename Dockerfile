FROM java:8-jre

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

ENV CONFLUENT_HOME=/opt/confluent \
    CONFLUENT_USER=confluent \
    CONFLUENT_GROUP=confluent

ENV CONFLUENT_VERSION=3.0 \
    CONFLUENT_RELEASE=3.0.0 \
    CONFLUENT_PKG_NAME=confluent-3.0.0-2.11

RUN apt-get update && apt-get install netcat -y

RUN groupadd -r $CONFLUENT_GROUP && \
    useradd -r -g $CONFLUENT_GROUP $CONFLUENT_USER

ADD http://packages.confluent.io/archive/$CONFLUENT_VERSION/$CONFLUENT_PKG_NAME.tar.gz $CONFLUENT_PKG_NAME.tar.gz

RUN tar xvzf $CONFLUENT_PKG_NAME.tar.gz && \
    rm -f $CONFLUENT_PKG_NAME.tar.gz && \
    mv confluent-$CONFLUENT_RELEASE $CONFLUENT_HOME && \
    chown -R $CONFLUENT_USER:$CONFLUENT_GROUP $CONFLUENT_HOME

ENV PATH=$CONFLUENT_HOME/bin:$PATH

USER $CONFLUENT_USER

WORKDIR $CONFLUENT_HOME
