#!/bin/sh

docker-compose run --rm -w /root/mecab-ipadic-neologd --entrypoint bash mecab ./bin/install-mecab-ipadic-neologd -n -a -y