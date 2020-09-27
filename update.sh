#!/bin/sh

docker-compose run --rm mecab -w /root/mecab-ipadic-neologd sh -c './bin/install-mecab-ipadic-neologd -n -a -y'