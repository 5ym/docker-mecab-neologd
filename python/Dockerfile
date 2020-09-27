FROM alpine

RUN apk add --no-cache alpine-sdk bash py-pip && \
    cd /tmp && wget https://github.com/taku910/mecab/archive/master.zip && unzip master.zip && \
    cd mecab-master/mecab && ./configure && make && make check && make install && \
    cd ../mecab-ipadic && ./configure --with-charset=utf8 && make && make install && \
    cd /root && git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git && \
    cd mecab-ipadic-neologd && ./bin/install-mecab-ipadic-neologd -n -a -y && rm -rf /tmp/* && \
    echo "dicdir = /usr/local/lib/mecab/dic/mecab-ipadic-neologd" > /usr/local/etc/mecabrc && \
    pip install mecab-python3
VOLUME /usr/local/lib/mecab/dic
WORKDIR /usr/src/app

CMD [ "python" ]