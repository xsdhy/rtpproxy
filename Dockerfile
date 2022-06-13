FROM alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add --no-cache rtpproxy curl && \
    curl -qL -o /usr/bin/netdiscover https://github.com/CyCoreSystems/netdiscover/releases/download/v1.2.5/netdiscover.linux.amd64 && \
    chmod +x /usr/bin/netdiscover

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]