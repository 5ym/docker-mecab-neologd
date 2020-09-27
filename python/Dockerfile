FROM alpine

RUN apk add alpine-sdk php7-dev bash py-pip && \
    cd /tmp && wget https://github.com/taku910/mecab/archive/master.zip && unzip master.zip && \
    cd mecab-master/mecab && ./configure && make && make check && make install && \
    cd ../mecab-ipadic && ./configure && make && make install && \
    cd /root && wget https://github.com/neologd/mecab-ipadic-neologd/archive/v0.0.7.zip && unzip v0.0.7.zip && \
    rm -f v0.0.7.zip && cd mecab-ipadic-neologd-0.0.7 && ./bin/install-mecab-ipadic-neologd -n -a -y && \
    pip install mecab-python3
VOLUME /usr/local/lib/mecab/dic

CMD [ "python" ]