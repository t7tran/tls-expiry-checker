FROM alpine:3.18.5

COPY ./rootfs /

RUN addgroup checker && adduser -S -D -G checker checker && \
# add font support for xlsx export
    apk --no-cache add bash curl coreutils openssl && \
# clean up
    rm -rf /apk /tmp/* /var/cache/apk/*

USER checker

ENTRYPOINT ["tls-checker"]
CMD []