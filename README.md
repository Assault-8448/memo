# メモ

[あさると](https://twitter.com/SzlyNe_)のメモ用リポジトリ。  
色々あります。雑に書いたコードなども含まれてる（とおもう）ので見る際にはご注意を（リファクタリングしてくれる方募集！）

## 存在するあれそれ

### [avs ファイル](./avs)

AviSynth のあれそれ。フレーム補間やモーションブラーなどなど。

### [ffmpeg の sh](./ffmpeg)

ffmpeg のシェルスクリプト。中身を vim かなんかで弄ってから実行するのを前提としています。

### [VRChat](./vrchat)

VRChat のメモ。

### [Python](./python)

Python のメモ。

### [PAYDAY 2](./payday2)

Payday2 に関するメモ。

## 重要そうなメモ

- ffmpeg は高解像度になればなるほど GPU ゴリゴリ使ってくれる。  
  1920x1080 では Video Encode を 10%を使ってくれない。4K あるいはそれ以上になるともっと使ってくれる・・・のか？（未検証）

- avs ファイルは Aviutl に食わせる際コーデックを色々入れないと「could not read...」エラーを吐く。
  「LAVFilters」や「ffdshow」を入れると動いてくれる。
