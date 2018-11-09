FROM alpine:latest

RUN apk add --no-cache --update-cache --update chrony && \
    rm -rf /tmp/* /var/cache/apk/*

EXPOSE 123/udp
VOLUME /etc/chrony/
ENTRYPOINT ["/usr/sbin/chronyd"]
CMD ["-d","-x"]
