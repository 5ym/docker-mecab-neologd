#!/bin/sh

docker-compose run --rm mecab -w /root/mecab-ipadic-neologd-0.0.7 sh -c './bin/install-mecab-ipadic-neologd -n -a -y'
