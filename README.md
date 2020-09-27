# docker-mecab-neologd
## フレーバー
Dockerfile: コマンドラインのみ
php/Dockerfile: php-fpm + nginx
python/Dockerfile: pip + mecab-python3
## How to
### 準備
`docker-compose-sample.yml`をコピーして`build`の箇所を適宜使用したいビルドにします。

```s
cp docker-compose-sample.yml docker-compose.yml
```
### コマンドラインのみ
下記のように文言を渡せばそのまま結果が帰ってきます。コマンドラインオプション等は本家のmecabから変わりません

```sh
docker-compose run --rm mecab "ほげほげ"
```
## php-fpm + nginx
立ち上げればnginxとphp-fpmが立ち上げります。コンテナの中に入り`/var/lib/nginx/html`内にphpファイルをおけばブラウザで確認できます。

### python
実行すればインタラクティブでpythonが起動します。

```sh
docker-compose run --rm mecab
```