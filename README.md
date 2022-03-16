# GetNearRankDocker

## これは何？
[GetNearRankScript](https://github.com/rakkyo150/GetNearRankScript)をDockerで動かすためのDockerイメージです。<br>
Docker環境を導入さえすれば、OSなどのPC環境に関係なくGetNearRankScriptが動かせます。

Docker Hub : https://hub.docker.com/repository/docker/rakkyo/getnearrankdocker

## 使い方

まずは、作成されるプレイリストを置きたいディレクトリを作成し、そこに移動します。

```sh
mkdir ~/hogehoge
cd ~/hogehoge
```

ここからは２種類の方法があります。<br>
コマンドが短いのでおすすめはdocker-composeですが、一応Dockerコマンドでの使い方も紹介します。

### Dockerコマンドを使う場合

```sh
docker run --rm -it -v ${pwd}:/output rakkyo/getnearrankdocker
```

初回実行時は、設定を入力する必要があります。<br>
各設定項目の内容については[こちら](https://github.com/rakkyo150/GetNearRankScript)からご確認ください。<br>
最終的に、Config.jsonとプレイリストが生成されます。<br>


### docker-composeを使う場合

まず、docker-comppose.ymlが必要です。<br>
これに関しては、[releases](https://github.com/rakkyo150/GetNearRankDocker/releases)においてあるので、これをダウンロードして現在のディレクトリ(上記の例だと~/hogehoge/)に配置してください。<br>
そのあと、以下のコマンドを実行してください。

```sh
docker-compose run --rm app
```

初回実行時は、指示に従って設定を入力してください。<br>
各設定項目の内容については[こちら](https://github.com/rakkyo150/GetNearRankScript)からご確認ください。<br>
最終的に、Config.jsonとプレイリストが生成されます。<br>

## 設定を変更する場合

二回目以降の実行で設定を変更したい場合は、Config.jsonを直接書き換えてください。
