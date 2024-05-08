FROM amazoncorretto:21-al2023-headless

LABEL org.opencontainers.image.authors="Roni Kumar Saha <roni.csed@gmail.com>"

ARG ACTIVEMQ_VERSION=6.1.2

ENV ACTIVEMQ_DATA /data

RUN cd /opt/ ; \
    wget -O download.tar.gz "https://www.apache.org/dyn/closer.cgi?filename=/activemq/${ACTIVEMQ_VERSION}/apache-activemq-${ACTIVEMQ_VERSION}-bin.tar.gz&action=download" ; \
    tar zxvf *.tar.gz ; ls ; \
    rm download.tar.gz

WORKDIR /opt/apache-activemq-${ACTIVEMQ_VERSION}/bin

VOLUME  /data

CMD ["./activemq", "console"]
