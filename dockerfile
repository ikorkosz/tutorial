
FROM alpine

RUN apk add --update \
        bash \
        curl \
    && rm -rf /var/cache/apk/*
RUN curl -Is http://oc-chelm.pl | head -1 -> wynik.txt


