ARG VERSION=3.4
ARG URL=http://oc-chelm.pl
FROM alpine:$VERSION

RUN apk add --update \
        bash \
        curl \
    && rm -rf /var/cache/apk/*
RUN addgroup -g 1000 alpiny \
    &&  adduser -u 1008 -G alpiny -h /my_app alpinek -D alpinek

USER alpinek

WORKDIR /my_app


CMD  curl -Is $URL | head -1 -> wynik.txt

ENTRYPOINT ["whoami"]
CMD ["-f", "/dev/null"]
