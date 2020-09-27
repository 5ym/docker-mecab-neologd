FROM alpine

RUN apk add alpine-sdk php7-dev bash && \
    cd /tmp && wget https://github.com/taku910/mecab/archive/master.zip && unzip master.zip && \
    cd mecab-master/mecab && ./configure && make && make check && make install && \
    cd ../mecab-ipadic && ./configure && make && make install && \
    cd /root && wget https://github.com/neologd/mecab-ipadic-neologd/archive/v0.0.7.zip && unzip v0.0.7.zip && \
    rm -f v0.0.7.zip && cd mecab-ipadic-neologd-0.0.7 && ./bin/install-mecab-ipadic-neologd -n -a -y && \
    cd /tmp && wget https://github.com/rsky/php-mecab/archive/v0.6.0.zip && unzip v0.6.0.zip && \
    cd php-mecab-0.6.0/mecab && phpize && ./configure && make && make test && make install && \
    rm -rf /tmp/* && echo "extension=mecab.so" > /etc/php7/conf.d/mecab.ini
VOLUME /usr/local/lib/mecab/dic

CMD ["php", "-v"]
