# netsuper

IY Netsuper APP

## importルールを強制するための設定
`.git/hooks/pre-commit` ファイルを次の内容で作成して、実行権限をつける ( `chmod +x .git/hooks/pre-commit` )

```shell
#!/bin/sh

FILES=()

# Stageにあるlib以下の拡張子がdartのファイルをforループする
for FILE in `git diff --staged --name-only | grep -e '^lib/.*.dart' | grep -v '\.g.dart' | grep -v '\.freezed.dart' | grep -v '\.gen.dart'`; do
    # もし.dart以外の拡張子に対しても何か処理を行いたい場合は、次のように拡張子で判別する
    # また、for文のgrep箇所を、grep -e .py -e .dart のように複数拡張子を指定することもできる
    # if [ ${FILE##*.} = "js" ]; then
    # fi

    # 存在するファイルを配列に格納
    if [ -e $FILE ];then
        FILES+=("$FILE")
    fi
done

if [ ${#FILES[@]} -ne 0 ];then
    # excec import_path_converter
    echo "Running import_path_converter..."
    flutter pub run import_path_converter:main "${FILES[@]}"

    # excec import_sorter
    echo "Running import_sorter..."
    flutter pub run import_sorter:main "${FILES[@]}"

    # excec flutter format
    echo "Running flutter format..."
    flutter format -l 120 "${FILES[@]}"

    git add "${FILES[@]}"
fi

```


## Flavor
- https://pub.dev/packages/flutter_flavor

### 環境毎の実行

```
$ flutter run --debug --flavor local -t lib/main_local.dart
$ flutter run --debug --flavor stg1 -t lib/main_stg1.dart
$ flutter run --debug --flavor stg2 -t lib/main_stg2.dart
$ flutter run --release --flavor production -t lib/main_production.dart
```

## build_runner
APIレスポンスのModelクラス等のfreezedとfromjsonの自動生成  
/assets 配下のリソースを/lib/gen 配下に自動生成

`flutter pub run build_runner build`  
or  
`flutter pub run build_runner build --delete-conflicting-outputs`

## firebase hosting
firebase cliのインストール
```
 npm install -g firebase-tools
```

firebase cliのログイン
```
 firebase login
```

動作確認用WebPageのデプロイ
```
 cd firebase_hosting
 firebase deploy
```
デプロイされたページ
https://iy-netsuper-dxe.web.app/

## プロファイル・証明書のダウンロード
開発用証明書・プロファイルの取得はfastlaneコマンドを使用して行う。

詳細は下記ページを参照。
https://docs.7andi-digital.com/pages/viewpage.action?pageId=103645190

## 環境構築
nodejsとflutterのバージョン管理に [asdf](http://asdf-vm.com/) を使用する。
```shell
brew install asdf
```
インストール後zshの場合
```shell
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
```
他のshellの場合は [公式](http://asdf-vm.com/guide/getting-started.html#_3-install-asdf) を参照。

asdf flutterプラグインとnodejsプラグインの依存コマンドをインストール
```shell
brew install jq gpg gawk
```

asdf flutterプラグインとnodejsプラグインのインストール
```shell
asdf plugin add flutter

asdf plugin add nodejs
```

プロジェクトディレクトリに移動して、
```shell
asdf install
```
でflutterとnodejsがインストールされる。

#### バージョンを変更したい場合
```shell
asdf list flutter
```
で現在インストール済みの `Flutter` バージョンを確認する。

変更先のバージョンがない場合
```shell
asdf list all flutter
```
でバージョン一覧を確認し、
```shell
asdf install flutter <version>
```
で該当バージョンを取得してくる。

バージョン取得後、
```shell
asdf local flutter <version>
```
でバージョンを変更できる。

インストール後
```shell
asdf reshim
```
でコマンドリンクを貼り直す (Android Studioのターミナルの場合は再起動をする)

### Android Studioでの設定
Android Studioの場合、asdfのflutterを認識させるために
`Preferences > Language & Frameworks > Flutter`
のSDK Pathに `asdf where flutter` コマンドの結果を指定する。

また、
`Preferences > Language & Frameworks > Dart` のSDK Pathに先程のコマンドの結果 + `/bin/chache/dart-sdk` を指定する。

#### buildエラーが起こる場合
まずは
```shell
flutter clean
```
を行ってみる。iOSシミュレータやAndroidエミュレータのデータを全て削除する。

大体がffiのエラーだったりするので、
```shell
gem install --user-install ffi -- --enable-libffi-alloc
```
でffiをApple Siliconに対応したライブラリに変える (すでに環境にffiがインストールされている場合はアンインストールしてから行うこと)。

改めて、 `flutter pub get` を行ってビルドをしてみる。

### VSCodeでの設定
VSCodeの場合Flutter SDKのパスで不具合が出た場合 `.zshrc` などに `export FLUTTER_ROOT="$(asdf where flutter)"` を追記すると解消するかもしれない。

### JavaScriptコードの開発
`assets/js_src`ディレクトリの`src/`以下にJavaScriptのソースを作成したら、
```shell
npm install # 初回のみ
npm run build
```
で`assets/js`配下にトランスパイルされたソースが生成される。
あとはいつものようにbuild_runnerを動かせばflutterに取り込まれる。

#### WebViewでJavaScriptを使用する場合の対応
古いバージョンのOSの場合WebViewがEcmascriptの新し目の規格に対応していないためにJavaScriptの実行でエラーが発生することがある。

これを抑制するためにBabelを使用してJavaScriptソースをEcmascript 5にトランスパイルする。

## vpn環境での接続方法
LC VPNに接続後、`scripts/vpn_route.sh`のスクリプトを実行することで開発環境で各種検証環境にアクセス可能になる。

# Flutter初回設定
## Xcode
```shell
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer

sudo xcodebuild -runFirstLaunch
```

### CocoaPodsインストール
```shell
sudo gem install cocoapods -v 1.11.3
```

## cmdline-toolsのインストール
Android Studioで `Preferences > Appearance & Behavior > System Settings > Android SDK` の設定項目に移動。
`SDK Tools` のタブで `Android SDK Command-line Tools` にチェックを入れてダウンロードする。

## license承認
```shell
flutter doctor --android-licenses
```

### Android StudioのJDKをflutterから読み込ませる
```shell
cd <Android Studioがインストールされたパス>/Android\ Studio.app/Contents/

sudo ln -nfs jbr jre
```
