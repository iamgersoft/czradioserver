FROM alpine:3.18

ENV SOURCE_PASSWORD="" \
    RELAY_PASSWORD="" \
    ADMIN_USER="" \
    ADMIN_PASSWORD=""

COPY czradio.sh /usr/bin/czradio.sh
COPY czserver-template.xml /etc/czserver/czserver-template.xml

RUN apk update \
    && apk upgrade \
    && apk add --no-cache icecast gettext \
    && chmod +x /usr/bin/czradio.sh

EXPOSE 8000

ENTRYPOINT ["/usr/bin/czradio.sh"]
