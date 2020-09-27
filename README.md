# docker-mecab-neologd
## フレーバー
Dockerfile: コマンドラインのみ
php/Dockerfile: php-fpm + nginx
python/Dockerfile: pip + mecab-python3
## How to
### 準備
任意の`docker-compose-*.yml`をコピーします

```sh
cp docker-compose-shell.yml docker-compose.yml
```
### コマンドラインのみ
実行すれば本家mecabと同じようにインタラクティブで起動します。コマンドラインオプション等は本家のmecabから変わりません

```sh
docker-compose run --rm mecab
```

### php-fpm + nginx
立ち上げればnginxとphp-fpmが立ち上げります。`php/html`内にphpファイルを置けばブラウザで確認できます。

```sh
docker-compose up -d
```

### python
実行すればインタラクティブでpythonが起動します。また`python/app`にファイルを置いて実行もできます。

```sh
docker-compose run --rm mecab
docker-compose run --rm mecab {ファイル名}
```

### その他
`/usr/local/etc/mecabrc`に追記してシステム辞書を`/usr/local/lib/mecab/dic/mecab-ipadic-neologd`に固定しています。
一様デフォルトのipadicも`/usr/local/lib/mecab/dic/ipadic`にutf-8で作成してあります。費用であればライブラリ内で都度していするか、`-d`で指定してください。