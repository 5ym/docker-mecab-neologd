FROM alpine

WORKDIR /tmp
RUN apk add alpine-sdk php7-dev && \
    wget https://github.com/taku910/mecab/archive/master.zip && unzip master.zip && \
    cd mecab-master/mecab && ./configure && make && make check && make install && \
    cd ../mecab-ipadic && ./configure && make && make install && \
    cd ../.. && \
    wget https://github.com/rsky/php-mecab/archive/v0.6.0.zip && unzip v0.6.0.zip && \
    cd php-mecab-0.6.0/mecab && phpize && ./configure && make && make test && make install && \
    rm -rf /tmp/*

WORKDIR /root/app

ENTRYPOINT php
