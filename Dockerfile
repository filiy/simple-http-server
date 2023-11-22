FROM registry.access.redhat.com/ubi9/ubi-minimal:latest

LABEL io.openshift.build.commit.date="Tue Nov 22 13:13:58 2023 -0600"

RUN microdnf install --nodocs -y socat iproute \
    && microdnf -y update \
    && microdnf clean all

LABEL test="test"

RUN mkdir /www/ && chmod 770 /www/

ADD srv.sh /www/srv.sh

EXPOSE 8080

USER 1984

CMD socat TCP4-LISTEN:8080,fork EXEC:/www/srv.sh
